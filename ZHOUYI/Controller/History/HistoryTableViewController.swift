//
//  HistoryTableViewController.swift
//  ZHOUYI
//
//  Created by 祝鹏富 on 2019/1/23.
//  Copyright © 2019 FENGYX. All rights reserved.
//

import UIKit
import SwiftHTTP
//阿沛的回滚到正常版本

class HistoryTableViewController: UITableViewController {
    
    var resultList: [Gua] = []
    var resultPage: Int = 1
    let RowHeight: CGFloat = 50
    
    //刷新控件
//    var refresher: UIRefreshControl!
    
    @IBAction func Exit (_ segue: UIStoryboardSegue) {
//        if let selectIndexPath = tableView.indexPathForSelectedRow {
//            deleteRecord(id: (resultList[resultList.count - selectIndexPath.row - 1].id)!, row: selectIndexPath.row)
//        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

//        var date = Date().timeInterval
//        let date = NSDate()
//        let date1 = date.
        GlobalUser.loadUserInfo()
        if !(GlobalUser.online ?? false) && (GlobalUser.login ?? false) {
            authenticateToken()
        }
        
        
        
//        self.tableView.alwaysBounceVertical = true
        
//        if !(GlobalUser.online ?? false) {
//            return
//        } else {
//            resultList = []
//            self.resultPage = 1
//            loadHistory(page: resultPage)
//        }
        
//        loadHistory(page: resultPage)
//        tableView.reloadData()
        
//        refresher = UIRefreshControl()
//        refresher.attributedTitle = NSAttributedString.init(string: "下拉刷新")
//        refresher.tintColor = .lightGray
//        refresher?.addTarget(self, action: #selector(refresh), for: UIControl.Event.valueChanged)
//        tableView?.addSubview(refresher)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if !(GlobalUser.online ?? false) {
            return
        } else {
            resultList = []
            self.resultPage = 1
            loadHistory(page: resultPage)
//            tableView.reloadData()
        }
//        loadHistory(page: resultPage)
//        tableView.reloadData()
//
    }
    
    
    // 验证token，如果token有效则尝试自动登录
    func authenticateToken () {
        let reqJson = ["id": GlobalUser.id, "token": GlobalUser.token] as [String : Any]
        HTTP.POST(Api.AuthTokenUrl, parameters: reqJson, requestSerializer: JSONParameterSerializer()) { resp in
            do {
                let respJson = try JSONSerialization.jsonObject(with: resp.data, options: .mutableContainers) as AnyObject
                let result = respJson.object(forKey: "result") as? String
                if result == "success" {
                    self.autoSignIn()
                }
            } catch {
                print("Authenticate Token Error:")
                print(error)
            }
        }
    }
    
    // 验证token成功之后，尝试自动登录
    func autoSignIn() {
        let reqJson = ["name": GlobalUser.nickname, "password": GlobalUser.password]
        HTTP.POST(Api.SignInUrl, parameters: reqJson, requestSerializer: JSONParameterSerializer()) {resp in
            do {
                let respJson = try JSONSerialization.jsonObject(with: resp.data, options: .mutableContainers) as AnyObject
                let result = respJson.object(forKey: "result") as? String
                if result == "success" {
                    GlobalUser.id = respJson.object(forKey: "userId") as? Int
                    GlobalUser.realname = respJson.object(forKey: "realname") as? String
                    GlobalUser.tel = respJson.object(forKey: "phone") as? String
                    GlobalUser.birthday = respJson.object(forKey: "birthYM") as? String
                    GlobalUser.token = respJson.object(forKey: "token") as? String
                    GlobalUser.login = true
                    GlobalUser.online = true
                    GlobalUser.saveUserInfo()
                    
                    self.loadHistory(page: self.resultPage)
                }
            } catch {
                print("Sign In Error:")
                print(error)
            }
        }
    }
    
    
    func loadHistory(page: Int) {
        let reqJson = ["method": "time", "keyword": nil, "page": page] as [String : Any?]
        let reqHeader = ["x-zhouyi-token": GlobalUser.token!, "x-zhouyi-userid": String(GlobalUser.id!)]
        HTTP.POST(Api.LoadRecordUrl, parameters: reqJson, headers: reqHeader as [String : String], requestSerializer: JSONParameterSerializer()) { resp in
            do {
                let respJson = try JSONSerialization.jsonObject(with: resp.data, options: .mutableContainers) as AnyObject
                let result = respJson.object(forKey: "result") as? String
                let reason = respJson.object(forKey: "reason") as? String
                if (result == "success") {
                    let record = respJson.object(forKey: "record") as! [AnyObject]
//                    self.resultPage += 1
                    DispatchQueue.main.async {
//                        for s in stride(from: 0, to:record.count, by: -1) {
//                            self.resultList.append(Gua(initJson: s as AnyObject))
//                        }
                        //实现从最新的记录开始从上往下加载显示
//                        .reversed()
                        for s in record {
                            self.resultList.append(Gua(initJson: s))
//                            self.resultList.first = Gua(initJson: s)
                        }
                        self.tableView.reloadData()
                    }
                }
            } catch {
                print("Load History Error")
                print(error)
            }
        }
    }
    
    
    
    func deleteRecord(id: String, row: Int) {
        let reqJson = ["id": id]
        let reqHeader = ["x-zhouyi-token": GlobalUser.token!, "x-zhouyi-userid": String(GlobalUser.id!)]
        HTTP.POST(Api.deleteRecordUrl, parameters: reqJson, headers: reqHeader, requestSerializer: JSONParameterSerializer()) { resp in
            do {
                let respJson = try JSONSerialization.jsonObject(with: resp.data, options: .mutableContainers) as AnyObject
                print(respJson)
                let result = respJson.object(forKey: "result") as? String
                if result == "success" {
                    DispatchQueue.main.async {
                        //row改成self.resultList.count - row - 1
                        self.resultList.remove(at: self.resultList.count - row - 1)
//                        self.tableView.reloadData()
//                        self.loadHistory(page: self.resultPage)
                        self.tableView.reloadData()
                    }
                }
            } catch {
                print("Delete Record Error")
                print(error)
            }
        }
    }
    
    func getWeek(date: String) -> String {
        // 取日期的年月日
        let d: String = String(date.prefix(10))
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "yyyy-MM-dd"
        let weekdayFormat = DateFormatter()
        weekdayFormat.dateFormat = "EEEE"
        let weekday = weekdayFormat.string(from: dateFormat.date(from: d)!)
        switch weekday {
        case "Sunday":
            return d + " 日"
        case "Monday":
            return d + " 一"
        case "Tuesday":
            return d + " 二"
        case "Wednesday":
            return d + " 三"
        case "Thursday":
            return d + " 四"
        case "Friday":
            return d + " 五"
        case "Saturday":
            return d + " 六"
        default:
            return d
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return resultList.count
    }

    //tableView.reloadData()后会调用该方法
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell", for: indexPath)
        
        let reason = resultList[self.resultList.count - indexPath.row - 1].reason   //indexPath.row改成self.resultList.count - indexPath.row - 1
        if reason?.count ?? 0 > 15 {         //此为超过15个字符的情况
            let r = reason?.prefix(15)      //截取reason文本的前15个字符
            cell.textLabel?.text = String(r!) + "..."     //则显示为前15个字符+“...”
        } else {
            cell.textLabel?.text = reason
        }
        //indexPath.row改成resultList.count - indexPath.row - 1 两个地方改了
        cell.detailTextLabel?.text = resultList[resultList.count - indexPath.row - 1].name! + "(" + self.getWeek(date: resultList[resultList.count - indexPath.row - 1].date!) + ")"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return RowHeight
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
//            tableView.deleteRows(at: [indexPath], with: .fade)
//            resultList.remove(at: indexPath.row)
//            tableView.reloadData()
            //indexPath.row改成self.resultList.count - indexPath.row - 1 改一处，第一个地方
            deleteRecord(id: (resultList[self.resultList.count - indexPath.row - 1].id)!, row: indexPath.row)
        } else if editingStyle == .insert {
//            loadHistory(page: resultPage)

//            tableView.reloadData()

            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    //点击cell，跳转到历史事由，即详情页（包括卜卦日期、用神、事由、姓名和备注）
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "HistoryToHistoryReason" {
            let destination = segue.destination as! HistoryReasonViewController
            if let cell = sender as? UITableViewCell {
                let indexPath = tableView.indexPath(for: cell)
                let result = resultList[resultList.count - (indexPath)!.row - 1]  // (indexPath)!.row改成resultList.count - (indexPath)!.row - 1
                destination.gua = result
            }
        }
        
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        //单击单元格后灰色高亮后逐渐变淡消失
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
 
//    @objc func refresh() {
//        loadHistory(page: resultPage)
//        tableView?.reloadData()
//
//        //停止刷新动画
//        refresher.endRefreshing()
//    }

//    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        if scrollView.contentOffset.y >= scrollView.contentSize.height - self.view.frame.height {
//            self.loadMore()
//        }
//    }
    
//    func loadMore() {
//        //只要是page的数量小于等于帖子的数量，则让用户在每次拉拽集合视图到底部的时候，让page的数量加12
//        if resultPage <= resultList.count {
//            resultPage = resultPage + 15
//            loadHistory(page: resultPage)
//        }
//    }
    
//    -(void)doubleClickTab:(NSNotification *)notification{
//
//    //这里有个坑 就是直接用NSInteger接收会有问题 数字不对
//    //因为上个界面传过来的时候封装成了对象，所以用NSNumber接收后再取值
//    NSNumber *index = notification.object;
//
//    if ([index intValue] == 1) {
//    //刷新
//    //animated不要为YES，否则菊花会卡死
//    [self.newsTableView setContentOffset:CGPointMake(0, self.newsTableView.contentOffset.y - self.newsTableView.refreshControl.frame.size.height) animated:NO];
//
//    [self.newsTableView.refreshControl beginRefreshing];
//
//    [self.newsTableView.refreshControl sendActionsForControlEvents:UIControlEventValueChanged];
//    }
//
//    }
    
//    func doubleClickTab(notification:NSNotification){
//        let index:NSNumber = notification.object as! NSNumber
//        if index.intValue == 1 {
//            self.tableView.setContentOffset(CGPoint(x: 0, y: self.tableView.contentOffset.y - (self.refresher.frame.size.height)), animated: false)
//            self.refresher.beginRefreshing()
//            self.refresher.sendActions(for: .valueChanged)
//            self.refresher.endRefreshing()
//        }
//    }
}
