//
//  UserInfoViewController.swift
//  ZHOUYI
//
//  Created by 祝鹏富 on 2019/1/18.
//  Copyright © 2019 FENGYX. All rights reserved.
//

import UIKit
var image:UIImage?
class UserInfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // 控件
    @IBOutlet weak var AvatarBackgroundImageView: UIImageView!
    @IBOutlet weak var AvatarButton: UIButton!
    @IBOutlet weak var InfoTableView: UITableView!
    @IBOutlet weak var SignOutButton: UIButton!
    // 控件功能
    @IBAction func ClickAvatarButton(_ sender: Any) {
        EditAvatar()
    }
    @IBAction func ClickSignOutButton(_ sender: Any) {
        GlobalUser.login = false
        GlobalUser.online = false
        GlobalUser.saveUserInfo()
        self.performSegue(withIdentifier: "UserInfoToMine", sender: nil)
    }
    
    @IBAction func Exit(_ segue: UIStoryboardSegue) {
        reloadView()
    }
    
    let InfoList: [String] = ["用户名", "真实姓名", "绑定手机号", "出生年月"]
    var InfoDetailList: [String] = []
    let CellHeight: CGFloat = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 设置圆形头像
        AvatarButton.layer.masksToBounds = true
        AvatarButton.layer.cornerRadius = AvatarButton.frame.width / 2
        SignOutButton.layer.masksToBounds = true
        SignOutButton.layer.cornerRadius = 5
        
        
        // 设置TableView的Delegate和DataSource
        InfoTableView.delegate = self
        InfoTableView.dataSource = self
        
        // 初始化InfoDetailList
        InfoDetailList.append(GlobalUser.nickname ?? "nickname")
        InfoDetailList.append(GlobalUser.realname ?? "realname")
        InfoDetailList.append(GlobalUser.tel ?? "tel")
        InfoDetailList.append(GlobalUser.birthday ?? "yyyy-mm")
    }
    
    func reloadView() {
        InfoDetailList.removeAll()
        InfoDetailList.append(GlobalUser.nickname ?? "nickname")
        InfoDetailList.append(GlobalUser.realname ?? "realname")
        InfoDetailList.append(GlobalUser.tel ?? "tel")
        InfoDetailList.append(GlobalUser.birthday ?? "yyyy-mm")
        InfoTableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return InfoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let infoCell = tableView.dequeueReusableCell(withIdentifier: "InfoCell", for: indexPath)
        infoCell.textLabel?.text = InfoList[indexPath.row]
        infoCell.detailTextLabel?.text = InfoDetailList[indexPath.row]
        return infoCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CellHeight
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case InfoList.firstIndex(of: "用户名"):
//            self.performSegue(withIdentifier: "UserInfoToEditNickname", sender: nil)
            //声明一个新的变量，生存期在方法的内部
            var textField = UITextField()
            
            let alert = UIAlertController(title: "修改用户名", message: "", preferredStyle: .alert)
            let action = UIAlertAction(title: "确定", style: .default) { (action) in
                //用户单击确定按钮以后要执行的代码
                tableView.cellForRow(at: indexPath)?.detailTextLabel!.text = textField.text
            }
            
            //在对话框alert中添加一个textfield，完成闭包的参数alertTextField代表所创建的文本框对象
            alert.addTextField { (alertTextField) in
                alertTextField.placeholder = "修改用户名"
                //让textField指向alertTextField，因为出了闭包，alertTextField不再存在
                textField = alertTextField
                //            print(alertTextField.text!)
            }
            
            alert.addAction(action)
            present(alert,animated: true,completion: nil)
            break;
        case InfoList.firstIndex(of: "真实姓名"):
//            self.performSegue(withIdentifier: "UserInfoToEditRealname", sender: nil)
            var textField = UITextField()
            
            let alert = UIAlertController(title: "修改真实姓名", message: "", preferredStyle: .alert)
            let action = UIAlertAction(title: "确定", style: .default) { (action) in
                //用户单击确定按钮以后要执行的代码
                tableView.cellForRow(at: indexPath)?.detailTextLabel!.text = textField.text
            }
            
            //在对话框alert中添加一个textfield，完成闭包的参数alertTextField代表所创建的文本框对象
            alert.addTextField { (alertTextField) in
                alertTextField.placeholder = "修改真实姓名"
                //让textField指向alertTextField，因为出了闭包，alertTextField不再存在
                textField = alertTextField
                //            print(alertTextField.text!)
            }
            
            alert.addAction(action)
            present(alert,animated: true,completion: nil)
            break;
        case InfoList.firstIndex(of: "出生年月"):
//            self.performSegue(withIdentifier: "UserInfoToEditBirthday", sender: nil)
            let alert = UIAlertController(title: "\n\n\n\n\n\n\n", message: nil, preferredStyle: .alert)
            let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: 270, height: 200))
            datePicker.locale = Locale(identifier: "zh_CN")
            datePicker.datePickerMode = UIDatePicker.Mode.date
            datePicker.maximumDate = Date()
            let yAction = UIAlertAction(title: "确定", style: .default, handler: { action in
                let dateFormat = DateFormatter()
                dateFormat.dateFormat = "yyyy-MM-dd"
//                let t = self.separateTime(time: dateFormat.string(from: .init()))
                tableView.cellForRow(at: indexPath)?.detailTextLabel!.text = dateFormat.string(from: datePicker.date)
//                    t[0] + "-" + t[1] + "-" + t[2]
                //                dateFormat.string(from: datePicker.date)
                //            tableView.cellForRow(at: indexPath)?.detailTextLabel!.text = t[0] + "-" + t[1] + "-" + t[2]
                //            self.DateButton.setTitle(dateFormat.string(from: datePicker.date), for: .normal)
            })
            let nAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
            alert.view.addSubview(datePicker)
            alert.addAction(yAction)
            alert.addAction(nAction)
            self.present(alert, animated: true, completion: nil)
//            let dateFormat = DateFormatter()
//
//            dateFormat.dateFormat = "yyyy-MM-dd-HH-mm-ss"
//            let t = separateTime(time: dateFormat.string(from: .init()))
            //        let yyyyMMddFormat = DateFormatter()
            //        yyyyMMddFormat.dateFormat = "yyyy-MM-dd"
            //        DateButton.setTitle(dateFormat.string(from: .init()), for: .normal)
//            tableView.cellForRow(at: indexPath)?.textLabel!.text = t[0] + "-" + t[1] + "-" + t[2]
//            tableView.cellForRow(at: indexPath)?.detailTextLabel!.text = t[0] + "-" + t[1] + "-" + t[2]
//            setTitle(t[0] + "-" + t[1] + "-" + t[2], for: .normal)
//            selectDate()
//            reloadView()
            break;
        default:
            break;
        }
    }
    
    func EditAvatar() {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.allowsEditing = true
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        image = info[.originalImage] as? UIImage
        AvatarBackgroundImageView.image = image
        AvatarButton.setImage(image, for: .normal)
        dismiss(animated: true, completion: nil)
//        DispatchQueue.main.async {
//            self.AvatarBackgroundImageView.image = image
//            self.AvatarButton.setImage(image, for: .normal)
//        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //以下为2019.05.05新增方法
    func separateTime(time : String?) -> [String] {
        if let t = time {
            let tt = t.components(separatedBy: "-");
            if tt.count == 6 {
                return tt;
            }
        }
        return ["yy", "MM", "dd", "HH", "mm", "ss"]
    }

    func selectDate() {
        let alert = UIAlertController(title: "\n\n\n\n\n\n\n", message: nil, preferredStyle: .alert)
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: 270, height: 200))
        datePicker.locale = Locale(identifier: "zh_CN")
        datePicker.datePickerMode = UIDatePicker.Mode.date
        datePicker.maximumDate = Date()
        let yAction = UIAlertAction(title: "确定", style: .default, handler: { action in
            let dateFormat = DateFormatter()
            dateFormat.dateFormat = "yyyy-MM-dd"
            self.InfoDetailList[3] = "1"
//                dateFormat.string(from: datePicker.date)
//            tableView.cellForRow(at: indexPath)?.detailTextLabel!.text = t[0] + "-" + t[1] + "-" + t[2]
//            self.DateButton.setTitle(dateFormat.string(from: datePicker.date), for: .normal)
        })
        let nAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        alert.view.addSubview(datePicker)
        alert.addAction(yAction)
        alert.addAction(nAction)
        self.present(alert, animated: true, completion: nil)
    }
}
