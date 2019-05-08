//
//  Oper4GuaXiangViewController.swift
//  ZHOUYI
//
//  Created by 祝鹏富 on 2019/1/23.
//  Copyright © 2019 FENGYX. All rights reserved.
//

import UIKit
import SwiftHTTP

class Oper4GuaXiangViewController: UIViewController {
    
//    @IBOutlet weak var BenGuaButton: UIButton!
//    @IBOutlet weak var BianGuaButton: UIButton!
//    @IBOutlet weak var BenGuaLabel: UILabel!
//    @IBOutlet weak var BianGuaLabel: UILabel!
    
    @IBOutlet weak var S0Button: UIButton!
    @IBOutlet weak var S1Button: UIButton!
    @IBOutlet weak var S2Button: UIButton!
    @IBOutlet weak var S3Button: UIButton!
    @IBOutlet weak var S4Button: UIButton!
    @IBOutlet weak var S5Button: UIButton!
    @IBOutlet weak var S6Button: UIButton!
    @IBOutlet weak var S7Button: UIButton!
    
    @IBOutlet weak var X0Button: UIButton!
    @IBOutlet weak var X1Button: UIButton!
    @IBOutlet weak var X2Button: UIButton!
    @IBOutlet weak var X3Button: UIButton!
    @IBOutlet weak var X4Button: UIButton!
    @IBOutlet weak var X5Button: UIButton!
    @IBOutlet weak var X6Button: UIButton!
    @IBOutlet weak var X7Button: UIButton!
    
    @IBOutlet weak var benGuaStackView: UIStackView!
    @IBOutlet weak var bianGuaStackView: UIStackView!
    
    @IBOutlet weak var benGuaView: UIView!
    @IBOutlet weak var bianGuaView: UIView!
    
    @IBOutlet weak var benShangGuaImageView: UIImageView!
    @IBOutlet weak var benXiaGuaImageView: UIImageView!
    
    @IBOutlet weak var bianShangGuaImageView: UIImageView!
    @IBOutlet weak var bianXiaGuaImageView: UIImageView!
    
    @IBOutlet weak var benGuaImageDoubleView: UIView!
    @IBOutlet weak var xiaGuaImageDoubleView: UIView!
    
    @IBOutlet weak var benGuaQianGongLabel: UILabel!
    @IBOutlet weak var benGuaDiYiGuaLabel: UILabel!
    @IBOutlet weak var benGuaQianWeiTianLabel: UILabel!
    
    @IBOutlet weak var bianGuaQianGongLabel: UILabel!
    @IBOutlet weak var bianGuaDiYiGuaLabel: UILabel!
    @IBOutlet weak var bianGuaQianWeiTianLabel: UILabel!
    
    /*
    @IBAction func ClickBenGuaButton(_ sender: Any) {
        if !isBenGua {
//            BianGuaButton.backgroundColor = WhiteColor
//            BenGuaButton.backgroundColor = BlueColor
            SButtonList[guaXiangSelect[2]].backgroundColor = WhiteColor
            SButtonList[guaXiangSelect[0]].backgroundColor = BlueColor
            XButtonList[guaXiangSelect[3]].backgroundColor = WhiteColor
            XButtonList[guaXiangSelect[1]].backgroundColor = BlueColor
            isBenGua = !isBenGua
        }
    }
    @IBAction func ClickBianGuaButton(_ sender: Any) {
        if isBenGua {
//            BenGuaButton.backgroundColor = WhiteColor
//            BianGuaButton.backgroundColor = BlueColor
            SButtonList[guaXiangSelect[0]].backgroundColor = WhiteColor
            SButtonList[guaXiangSelect[2]].backgroundColor = BlueColor
            XButtonList[guaXiangSelect[1]].backgroundColor = WhiteColor
            XButtonList[guaXiangSelect[3]].backgroundColor = BlueColor
            isBenGua = !isBenGua
        }
    }
 
 */
    
    
    @IBAction func ClickS0Button(_ sender: Any) {
//        S0Button.addTarget(self, action: #selector(buttonState(sender:)), for: .touchUpInside)
        S0Button.backgroundColor = BlueColor
        S1Button.backgroundColor = customGrayColor
        S2Button.backgroundColor = customGrayColor
        S3Button.backgroundColor = customGrayColor
        S4Button.backgroundColor = customGrayColor
        S5Button.backgroundColor = customGrayColor
        S6Button.backgroundColor = customGrayColor
        S7Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == UIColor.lightGray {
            benShangGuaImageView.image = UIImage(named: "000")
            shangGuaShuZi = "000"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianShangGuaImageView.image = UIImage(named: "000")
            shangGuaShuZi = "000"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: 0, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
    }
    @IBAction func ClickS1Button(_ sender: Any) {
//        S1Button.addTarget(self, action: #selector(buttonState(sender:)), for: .touchUpInside)
        S1Button.backgroundColor = BlueColor
        S0Button.backgroundColor = customGrayColor
        S2Button.backgroundColor = customGrayColor
        S3Button.backgroundColor = customGrayColor
        S4Button.backgroundColor = customGrayColor
        S5Button.backgroundColor = customGrayColor
        S6Button.backgroundColor = customGrayColor
        S7Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benShangGuaImageView.image = UIImage(named: "100")
            shangGuaShuZi = "100"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianShangGuaImageView.image = UIImage(named: "100")
            shangGuaShuZi = "100"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: 1, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
    }
    @IBAction func ClickS2Button(_ sender: Any) {
        S2Button.backgroundColor = BlueColor
        S0Button.backgroundColor = customGrayColor
        S1Button.backgroundColor = customGrayColor
        S3Button.backgroundColor = customGrayColor
        S4Button.backgroundColor = customGrayColor
        S5Button.backgroundColor = customGrayColor
        S6Button.backgroundColor = customGrayColor
        S7Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benShangGuaImageView.image = UIImage(named: "010")
            shangGuaShuZi = "010"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianShangGuaImageView.image = UIImage(named: "010")
            shangGuaShuZi = "010"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: 2, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
    }
    @IBAction func ClickS3Button(_ sender: Any) {
        S3Button.backgroundColor = BlueColor
        S0Button.backgroundColor = customGrayColor
        S1Button.backgroundColor = customGrayColor
        S2Button.backgroundColor = customGrayColor
        S4Button.backgroundColor = customGrayColor
        S5Button.backgroundColor = customGrayColor
        S6Button.backgroundColor = customGrayColor
        S7Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benShangGuaImageView.image = UIImage(named: "110")
            shangGuaShuZi = "110"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianShangGuaImageView.image = UIImage(named: "110")
            shangGuaShuZi = "110"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: 3, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
    }
    @IBAction func ClickS4Button(_ sender: Any) {
        S4Button.backgroundColor = BlueColor
        S0Button.backgroundColor = customGrayColor
        S1Button.backgroundColor = customGrayColor
        S2Button.backgroundColor = customGrayColor
        S3Button.backgroundColor = customGrayColor
        S5Button.backgroundColor = customGrayColor
        S6Button.backgroundColor = customGrayColor
        S7Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benShangGuaImageView.image = UIImage(named: "001")
            shangGuaShuZi = "001"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianShangGuaImageView.image = UIImage(named: "001")
            shangGuaShuZi = "001"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: 4, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
    }
    @IBAction func ClickS5Button(_ sender: Any) {
        S5Button.backgroundColor = BlueColor
        S0Button.backgroundColor = customGrayColor
        S1Button.backgroundColor = customGrayColor
        S2Button.backgroundColor = customGrayColor
        S3Button.backgroundColor = customGrayColor
        S4Button.backgroundColor = customGrayColor
        S6Button.backgroundColor = customGrayColor
        S7Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benShangGuaImageView.image = UIImage(named: "101")
            shangGuaShuZi = "101"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianShangGuaImageView.image = UIImage(named: "101")
            shangGuaShuZi = "101"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: 5, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
    }
    @IBAction func ClickS6Button(_ sender: Any) {
        S6Button.backgroundColor = BlueColor
        S0Button.backgroundColor = customGrayColor
        S1Button.backgroundColor = customGrayColor
        S2Button.backgroundColor = customGrayColor
        S3Button.backgroundColor = customGrayColor
        S4Button.backgroundColor = customGrayColor
        S5Button.backgroundColor = customGrayColor
        S7Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benShangGuaImageView.image = UIImage(named: "011")
            shangGuaShuZi = "011"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianShangGuaImageView.image = UIImage(named: "011")
            shangGuaShuZi = "011"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: 6, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
    }
    @IBAction func ClickS7Button(_ sender: Any) {
        S7Button.backgroundColor = BlueColor
        S0Button.backgroundColor = customGrayColor
        S1Button.backgroundColor = customGrayColor
        S2Button.backgroundColor = customGrayColor
        S3Button.backgroundColor = customGrayColor
        S4Button.backgroundColor = customGrayColor
        S5Button.backgroundColor = customGrayColor
        S6Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benShangGuaImageView.image = UIImage(named: "111")
            shangGuaShuZi = "111"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianShangGuaImageView.image = UIImage(named: "111")
            shangGuaShuZi = "111"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: 7, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
    }
    
    @IBAction func ClickX0Button(_ sender: Any) {
        X0Button.backgroundColor = BlueColor
        X1Button.backgroundColor = customGrayColor
        X2Button.backgroundColor = customGrayColor
        X3Button.backgroundColor = customGrayColor
        X4Button.backgroundColor = customGrayColor
        X5Button.backgroundColor = customGrayColor
        X6Button.backgroundColor = customGrayColor
        X7Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benXiaGuaImageView.image = UIImage(named: "000")
            xiaGuaShuZi = "000"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianXiaGuaImageView.image = UIImage(named: "000")
            xiaGuaShuZi = "000"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }

        reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 0)
    }
    @IBAction func ClickX1Button(_ sender: Any) {
        X0Button.backgroundColor = customGrayColor
        X1Button.backgroundColor = BlueColor
        X2Button.backgroundColor = customGrayColor
        X3Button.backgroundColor = customGrayColor
        X4Button.backgroundColor = customGrayColor
        X5Button.backgroundColor = customGrayColor
        X6Button.backgroundColor = customGrayColor
        X7Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benXiaGuaImageView.image = UIImage(named: "100")
            xiaGuaShuZi = "100"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianXiaGuaImageView.image = UIImage(named: "100")
            xiaGuaShuZi = "100"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 1)
    }
    @IBAction func ClickX2Button(_ sender: Any) {
        X2Button.backgroundColor = BlueColor
        X0Button.backgroundColor = customGrayColor
        X1Button.backgroundColor = customGrayColor
        X3Button.backgroundColor = customGrayColor
        X4Button.backgroundColor = customGrayColor
        X5Button.backgroundColor = customGrayColor
        X6Button.backgroundColor = customGrayColor
        X7Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benXiaGuaImageView.image = UIImage(named: "010")
            xiaGuaShuZi = "010"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianXiaGuaImageView.image = UIImage(named: "010")
            xiaGuaShuZi = "010"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 2)
    }
    @IBAction func ClickX3Button(_ sender: Any) {
        X3Button.backgroundColor = BlueColor
        X0Button.backgroundColor = customGrayColor
        X1Button.backgroundColor = customGrayColor
        X2Button.backgroundColor = customGrayColor
        X4Button.backgroundColor = customGrayColor
        X5Button.backgroundColor = customGrayColor
        X6Button.backgroundColor = customGrayColor
        X7Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benXiaGuaImageView.image = UIImage(named: "110")
            xiaGuaShuZi = "110"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianXiaGuaImageView.image = UIImage(named: "110")
            xiaGuaShuZi = "110"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 3)
    }
    @IBAction func ClickX4Button(_ sender: Any) {
        X4Button.backgroundColor = BlueColor
        X0Button.backgroundColor = customGrayColor
        X1Button.backgroundColor = customGrayColor
        X2Button.backgroundColor = customGrayColor
        X3Button.backgroundColor = customGrayColor
        X5Button.backgroundColor = customGrayColor
        X6Button.backgroundColor = customGrayColor
        X7Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benXiaGuaImageView.image = UIImage(named: "001")
            xiaGuaShuZi = "001"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianXiaGuaImageView.image = UIImage(named: "001")
            xiaGuaShuZi = "001"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 4)
    }
    @IBAction func ClickX5Button(_ sender: Any) {
        X5Button.backgroundColor = BlueColor
        X0Button.backgroundColor = customGrayColor
        X1Button.backgroundColor = customGrayColor
        X2Button.backgroundColor = customGrayColor
        X3Button.backgroundColor = customGrayColor
        X4Button.backgroundColor = customGrayColor
        X6Button.backgroundColor = customGrayColor
        X7Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benXiaGuaImageView.image = UIImage(named: "101")
            xiaGuaShuZi = "101"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianXiaGuaImageView.image = UIImage(named: "101")
            xiaGuaShuZi = "101"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 5)
    }
    @IBAction func ClickX6Button(_ sender: Any) {
        X6Button.backgroundColor = BlueColor
        X0Button.backgroundColor = customGrayColor
        X1Button.backgroundColor = customGrayColor
        X2Button.backgroundColor = customGrayColor
        X3Button.backgroundColor = customGrayColor
        X4Button.backgroundColor = customGrayColor
        X5Button.backgroundColor = customGrayColor
        X7Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benXiaGuaImageView.image = UIImage(named: "011")
            xiaGuaShuZi = "011"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianXiaGuaImageView.image = UIImage(named: "011")
            xiaGuaShuZi = "011"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 6)
    }
    @IBAction func ClickX7Button(_ sender: Any) {
        X7Button.backgroundColor = BlueColor
        X0Button.backgroundColor = customGrayColor
        X1Button.backgroundColor = customGrayColor
        X2Button.backgroundColor = customGrayColor
        X3Button.backgroundColor = customGrayColor
        X4Button.backgroundColor = customGrayColor
        X5Button.backgroundColor = customGrayColor
        X6Button.backgroundColor = customGrayColor
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benXiaGuaImageView.image = UIImage(named: "111")
            xiaGuaShuZi = "111"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        } else {
            bianXiaGuaImageView.image = UIImage(named: "111")
            xiaGuaShuZi = "111"
//            resultForShangXiaGua(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
            setThe64GuaLabel( shangGuaShuZi:shangGuaShuZi, xiaGuaShuZi:xiaGuaShuZi)
        }
        reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 7)
    }
    
    @IBAction func ClickOkButton(_ sender: Any) {
//         saveHistory()
        getLiuYao()
    }
    
    var SButtonList: [UIButton] = []
    var XButtonList: [UIButton] = []
    let BlueColor: UIColor = UIColor(red: 0.16, green: 0.44, blue: 0.96, alpha: 1.0)
    let customGrayColor: UIColor = UIColor(red: 220/255.0, green: 220/255.0, blue: 229/255.0, alpha: 1.0)
//    let customGrayColor: UIColor = UIColor(red: 220/255.0, green: 220/255.0, blue: 249/255.0, alpha: 1.0)
//    let WhiteColor: UIColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    
    let GuaXiangList: [Int] = [7, 3, 5, 1, 6, 2, 4, 0]
    var guaXiangSelect: [Int] = [0, 0, 0, 0] // 分别对应本卦上卦、本卦下卦、变卦上卦、变卦下卦的卦象
    var gua: Gua?
    var guaXiang: [Int] = [7, 7, 7, 7] // 分别对应本卦上卦、本卦下卦、变卦上卦、变卦下卦的值
    var isBenGua: Bool = true
    
    var shangGuaShuZi = "000"
    var xiaGuaShuZi = "000"
//    var hightLighted :Bool = false
    
//    var SButtons:[Int] = []
    let imageS000 = UIImage(named: "s000")
    let imageS100 = UIImage(named: "s100")
    let imageS010 = UIImage(named: "s010")
    let imageS110 = UIImage(named: "s110")
    let imageS001 = UIImage(named: "s001")
    let imageS101 = UIImage(named: "s101")
    let imageS011 = UIImage(named: "s011")
    let imageS111 = UIImage(named: "s111")
    
    let imageX000 = UIImage(named: "s000")
    let imageX100 = UIImage(named: "s100")
    let imageX010 = UIImage(named: "s010")
    let imageX110 = UIImage(named: "s110")
    let imageX001 = UIImage(named: "s001")
    let imageX101 = UIImage(named: "s101")
    let imageX011 = UIImage(named: "s011")
    let imageX111 = UIImage(named: "s111")
    
//    var images:UIImage = [imageS000,imageS100]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        SButtonList.append(S0Button)
        SButtonList.append(S1Button)
        SButtonList.append(S2Button)
        SButtonList.append(S3Button)
        SButtonList.append(S4Button)
        SButtonList.append(S5Button)
        SButtonList.append(S6Button)
        SButtonList.append(S7Button)
        
        XButtonList.append(X0Button)
        XButtonList.append(X1Button)
        XButtonList.append(X2Button)
        XButtonList.append(X3Button)
        XButtonList.append(X4Button)
        XButtonList.append(X5Button)
        XButtonList.append(X6Button)
        XButtonList.append(X7Button)
        
        
        
        for i in 0...7 {
            SButtonList[i].setImage(UIImage(named: "unselected\(i)"), for: .normal)
            SButtonList[i].setImage(UIImage(named: "unselected\(i)"), for: .selected)
            SButtonList[i].addTarget(self, action: #selector(buttonCliked(btn:)), for: .touchUpInside)
            
            XButtonList[i].setImage(UIImage(named: "unselected\(i)"), for: .normal)
            XButtonList[i].setImage(UIImage(named: "unselected\(i)"), for: .selected)
            XButtonList[i].addTarget(self, action: #selector(buttonCliked(btn:)), for: .touchUpInside)
        }
        
        
//        benGuaView.backgroundColor = .lightGray
//        benShangGuaImageView.backgroundColor = BlueColor
//        benXiaGuaImageView.backgroundColor = BlueColor
        
        benGuaImageDoubleView.backgroundColor = BlueColor
        S0Button.backgroundColor = BlueColor
        X0Button.backgroundColor = BlueColor
        
        let benGuaTap = UITapGestureRecognizer(target: self, action: #selector(benGuaTapped))
        benGuaTap.numberOfTapsRequired = 1
        benGuaTap.numberOfTouchesRequired = 1
        benGuaView?.isUserInteractionEnabled = true
        benGuaView?.addGestureRecognizer(benGuaTap)
        
        let bianGuaTap = UITapGestureRecognizer(target: self, action: #selector(bianGuaTapped))
        bianGuaTap.numberOfTapsRequired = 1
        bianGuaTap.numberOfTouchesRequired = 1
        bianGuaView?.isUserInteractionEnabled = true
        bianGuaView?.addGestureRecognizer(bianGuaTap)
    }
    
    func reloadView(s: Int, x: Int) {
        if isBenGua {
            if s != guaXiangSelect[0] {
                SButtonList[guaXiangSelect[0]].backgroundColor = customGrayColor
                SButtonList[s].backgroundColor = BlueColor
//                SButtonList[guaXiangSelect[0]].isHighlighted = false
//                SButtonList[s].isHighlighted = true
                guaXiangSelect[0] = s
                guaXiang[0] = GuaXiangList[guaXiangSelect[0]]
            }
            if x != guaXiangSelect[1] {
                XButtonList[guaXiangSelect[1]].backgroundColor = customGrayColor
                XButtonList[x].backgroundColor = BlueColor
//                XButtonList[guaXiangSelect[1]].isHighlighted = false
//                XButtonList[x].isHighlighted = true
                guaXiangSelect[1] = x
                guaXiang[1] = GuaXiangList[guaXiangSelect[1]]
            }
        } else {
            if s != guaXiangSelect[2] {
                SButtonList[guaXiangSelect[2]].backgroundColor = customGrayColor
                SButtonList[s].backgroundColor = BlueColor
//                SButtonList[guaXiangSelect[2]].isHighlighted = false
//                SButtonList[s].isHighlighted = true
                guaXiangSelect[2] = s
                guaXiang[2] = GuaXiangList[guaXiangSelect[2]]
            }
            if x != guaXiangSelect[3] {
//                XButtonList[guaXiangSelect[3]].backgroundColor = WhiteColor
//                XButtonList[x].backgroundColor = BlueColor
                XButtonList[guaXiangSelect[3]].isHighlighted = false
                XButtonList[x].isHighlighted = true
                guaXiangSelect[3] = x
                guaXiang[3] = GuaXiangList[guaXiangSelect[3]]
            }
        }
    }
    
    func saveHistory() {
        let reqJson = ["guaxiang": gua?.guaXiang, "date": gua?.date, "yongshen": gua?.yongShen, "name": gua?.name, "reason": gua?.reason, "note": gua?.note, "way": gua?.method] as [String : Any]
        let reqHeader = ["x-zhouyi-token": GlobalUser.token!, "x-zhouyi-userid": String(GlobalUser.id!)]
        HTTP.POST(Api.SaveRecordUrl, parameters: reqJson, headers: reqHeader as [String : String], requestSerializer: JSONParameterSerializer()) { resp in
            do {
                let respJson = try JSONSerialization.jsonObject(with: resp.data, options: .mutableContainers) as AnyObject
                //                let result = respJson.object(forKey: "result") as? String
                //                let reason = respJson.object(forKey: "reason") as? String
//                 self.getLiuYao()
                DispatchQueue.main.async {
                    self.performSegue(withIdentifier: "Oper4GuaXiangToResult", sender: nil)
                }
            } catch {
                print("Save Result Error")
                print(error)
            }
        }
    }
    
    func getLiuYao() {
        let list = convertData()
        let reqJson = ["list1" : list[0], "list2": list[1]]
        HTTP.POST(Api.GetLiuYao, parameters: reqJson, requestSerializer: JSONParameterSerializer()) { resp in
            do {
                let respJson = try JSONSerialization.jsonObject(with: resp.data, options: .mutableContainers) as AnyObject
                if let code = respJson.object(forKey: "code") as? Int {
                    if code == 0 {
                        let data: [Int] = respJson.object(forKey: "data") as! [Int]
                        self.gua?.guaXiang = data
                        self.saveHistory()
                    }
                }
//                 DispatchQueue.main.async {
//                     self.performSegue(withIdentifier: "Oper4GuaXiangToResult", sender: nil)
//                 }
            } catch {
                print("Get LiuYao Error")
                print(error)
            }
        }
    }
    
    // 将4个卦象数字转为两个二进制数组
    func convertData() -> [[Int]] {
        var list1: [Int] = [0, 0, 0, 0, 0, 0]
        var list2: [Int] = [0, 0, 0, 0, 0, 0]
        var l = numToList(num: guaXiang[0])
        for i in 0..<3 {
            list1[i] = l[i]
        }
        l = numToList(num: guaXiang[1])
        for i in 3..<6 {
            list1[i] = l[i - 3]
        }
        l = numToList(num: guaXiang[2])
        for i in 0..<3 {
            list2[i] = l[i]
        }
        l = numToList(num: guaXiang[3])
        for i in 3..<6 {
            list2[i] = l[i - 3]
        }
        return [list1, list2]
    }
    
    // 将数字转为一个三位数组：5 -> [1, 0, 1]
    func numToList(num: Int) -> [Int] {
        switch num {
        case 0:
            return [0, 0, 0]
        case 1:
            return [0, 0, 1]
        case 2:
            return [0, 1, 0]
        case 3:
            return [0, 1, 1]
        case 4:
            return [1, 0, 0]
        case 5:
            return [1, 0, 1]
        case 6:
            return [1, 1, 0]
        case 7:
            return [1, 1, 1]
        default:
            return [1, 1, 1]
        }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "Oper4GuaXiangToResult" {
            let destination = segue.destination as! ResultViewController
            destination.gua = gua
        }
    }

    @objc func benGuaTapped(){
//        benGuaView.backgroundColor = .lightGray
//        bianGuaView.backgroundColor = .clear

        benGuaImageDoubleView.backgroundColor = BlueColor
        xiaGuaImageDoubleView.backgroundColor = .clear
        setTheButtonAgainAccordingTheLabel()
//        findTheIndexFromLabelToImage()
//        S0Button.isHighlighted = true
//        X0Button.isHighlighted = true
//
//        S1Button.isHighlighted = false
//        S2Button.isHighlighted = false
//        S3Button.isHighlighted = false
//        S4Button.isHighlighted = false
//        S5Button.isHighlighted = false
//        S6Button.isHighlighted = false
//        S7Button.isHighlighted = false
//
//        X1Button.isHighlighted = false
//        X2Button.isHighlighted = false
//        X3Button.isHighlighted = false
//        X4Button.isHighlighted = false
//        X5Button.isHighlighted = false
//        X6Button.isHighlighted = false
//        X7Button.isHighlighted = false
        
//        if !isBenGua {
//            //            BianGuaButton.backgroundColor = WhiteColor
//            //            BenGuaButton.backgroundColor = BlueColor
//            SButtonList[guaXiangSelect[2]].backgroundColor = WhiteColor
//            SButtonList[guaXiangSelect[0]].backgroundColor = BlueColor
//            XButtonList[guaXiangSelect[3]].backgroundColor = WhiteColor
//            XButtonList[guaXiangSelect[1]].backgroundColor = BlueColor
//            isBenGua = !isBenGua
//        }
        
//        switch true {
//        case S0Button.isHighlighted:
//            reloadView(s: 0, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        case S1Button.isHighlighted:
//            reloadView(s: 1, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        case S2Button.isHighlighted:
//            reloadView(s: 2, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        case S3Button.isHighlighted:
//            reloadView(s: 3, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        case S4Button.isHighlighted:
//            reloadView(s: 4, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        case S5Button.isHighlighted:
//            reloadView(s: 5, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        case S6Button.isHighlighted:
//            reloadView(s: 6, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        case S7Button.isHighlighted:
//            reloadView(s: 7, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        default:
//            print("error")
//        }
        
//        switch true {
//        case X0Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 0)
//        case X1Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 1)
//        case X2Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 2)
//        case X3Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 3)
//        case X4Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 4)
//        case X5Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 5)
//        case X6Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 6)
//        case X7Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 7)
//        default:
//            print("error")
//        }
    }
    
    @objc func bianGuaTapped() {
//        bianGuaView.backgroundColor = .lightGray
//        benGuaView.backgroundColor = .clear

        xiaGuaImageDoubleView.backgroundColor = BlueColor
        benGuaImageDoubleView.backgroundColor = .clear
        setTheButtonAgainAccordingTheLabel()
        
//        S0Button.isHighlighted = true
//        X0Button.isHighlighted = true
//
//        S1Button.isHighlighted = false
//        S2Button.isHighlighted = false
//        S3Button.isHighlighted = false
//        S4Button.isHighlighted = false
//        S5Button.isHighlighted = false
//        S6Button.isHighlighted = false
//        S7Button.isHighlighted = false
//
//        X1Button.isHighlighted = false
//        X2Button.isHighlighted = false
//        X3Button.isHighlighted = false
//        X4Button.isHighlighted = false
//        X5Button.isHighlighted = false
//        X6Button.isHighlighted = false
//        X7Button.isHighlighted = false
        
//        if isBenGua {
//            //            BenGuaButton.backgroundColor = WhiteColor
//            //            BianGuaButton.backgroundColor = BlueColor
//            SButtonList[guaXiangSelect[0]].backgroundColor = WhiteColor
//            SButtonList[guaXiangSelect[2]].backgroundColor = BlueColor
//            XButtonList[guaXiangSelect[1]].backgroundColor = WhiteColor
//            XButtonList[guaXiangSelect[3]].backgroundColor = BlueColor
//            isBenGua = !isBenGua
//        }
        
//        switch true {
//        case S0Button.isHighlighted:
//            reloadView(s: 0, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        case S1Button.isHighlighted:
//            reloadView(s: 1, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        case S2Button.isHighlighted:
//            reloadView(s: 2, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        case S3Button.isHighlighted:
//            reloadView(s: 3, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        case S4Button.isHighlighted:
//            reloadView(s: 4, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        case S5Button.isHighlighted:
//            reloadView(s: 5, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        case S6Button.isHighlighted:
//            reloadView(s: 6, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        case S7Button.isHighlighted:
//            reloadView(s: 7, x: isBenGua ? guaXiangSelect[1] : guaXiangSelect[3])
//        default:
//            print("error")
//        }
//
//        switch true {
//        case X0Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 0)
//        case X1Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 1)
//        case X2Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 2)
//        case X3Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 3)
//        case X4Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 4)
//        case X5Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 5)
//        case X6Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 6)
//        case X7Button.isHighlighted:
//            reloadView(s: isBenGua ? guaXiangSelect[0] : guaXiangSelect[2], x: 7)
//        default:
//            print("error")
//        }
    }
    
////zhouyiios多余代码hhh，在barve.workspace 的 NavVC.swift中 hhh just in case
//func resultForShangXiaGua( shangGuaShuZi:String, xiaGuaShuZi:String)
    
    @objc func buttonCliked(btn:UIButton) {
        DispatchQueue.main.async {
            btn.isSelected = !btn.isSelected
            btn.isHighlighted = true
            
        }
    }
    
    var arrayfor64gua = ShangXiaGuaResult.arrayFor64Gua
    var indexfortuple:Int?
    var indexFromLabelToImage:Int?
    
    func setThe64GuaLabel( shangGuaShuZi:String, xiaGuaShuZi:String) {
//        let shangXiaGuaShuZi:String = shangGuaShuZi + xiaGuaShuZi
        let indexForTuple = findTheIndex(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            benGuaQianGongLabel.text = arrayfor64gua[indexForTuple].1
            benGuaDiYiGuaLabel.text = arrayfor64gua[indexForTuple].2
            benGuaQianWeiTianLabel.text = arrayfor64gua[indexForTuple].3
        }  else {
            bianGuaQianGongLabel.text = arrayfor64gua[indexForTuple].1
            bianGuaDiYiGuaLabel.text = arrayfor64gua[indexForTuple].2
            bianGuaQianWeiTianLabel.text = arrayfor64gua[indexForTuple].3
        }
    }

    func findTheIndex(shangGuaShuZi:String, xiaGuaShuZi:String) -> Int {
        let shangXiaGuaShuZi:String = shangGuaShuZi + xiaGuaShuZi
        for i in 0...63 {
            if arrayfor64gua[i].0 == shangXiaGuaShuZi {
                indexfortuple = i
            }
        }
        return indexfortuple!
    }
    
    func setTheDoubleImageView() {
        
    }
    
    func setTheButtonAgainAccordingTheLabel() {
        let text1:String?
        let text2:String?
        let text3:String?
        if benGuaImageDoubleView.backgroundColor == BlueColor {
            text1 = benGuaQianGongLabel.text
            text2 = benGuaDiYiGuaLabel.text
            text3 = benGuaQianWeiTianLabel.text
        } else {
            text1 = bianGuaQianGongLabel.text
            text2 = bianGuaDiYiGuaLabel.text
            text3 = bianGuaQianWeiTianLabel.text
        }
        for i in 0...63 {
            if text1 == arrayfor64gua[i].1 && text2 == arrayfor64gua[i].2 && text3 == arrayfor64gua[i].3 {
                indexFromLabelToImage = i
            }
        }
        if let index = indexFromLabelToImage {
            shangGuaShuZi = String(arrayfor64gua[index].0.prefix(3))
            xiaGuaShuZi = String(arrayfor64gua[index].0.suffix(3))
            fromLabelToButtonSet(shangGuaShuZi: shangGuaShuZi, xiaGuaShuZi: xiaGuaShuZi)
        }
        
//        DispatchQueue.main.async {
//            self.benShangGuaImageView.image = UIImage(named: "\(self.shangGuaShuZi)")
//            self.benXiaGuaImageView.image = UIImage(named: "\(self.xiaGuaShuZi)")
//        }
//        return indexFromLabelToImage!

    }
    
    func fromLabelToButtonSet( shangGuaShuZi:String, xiaGuaShuZi:String) {
        switch shangGuaShuZi {
        case "000":
            S0Button.backgroundColor = BlueColor
            S1Button.backgroundColor = customGrayColor
            S2Button.backgroundColor = customGrayColor
            S3Button.backgroundColor = customGrayColor
            S4Button.backgroundColor = customGrayColor
            S5Button.backgroundColor = customGrayColor
            S6Button.backgroundColor = customGrayColor
            S7Button.backgroundColor = customGrayColor
        case "100":
            S0Button.backgroundColor = customGrayColor
            S1Button.backgroundColor = BlueColor
            S2Button.backgroundColor = customGrayColor
            S3Button.backgroundColor = customGrayColor
            S4Button.backgroundColor = customGrayColor
            S5Button.backgroundColor = customGrayColor
            S6Button.backgroundColor = customGrayColor
            S7Button.backgroundColor = customGrayColor
        case "010":
            S0Button.backgroundColor = customGrayColor
            S1Button.backgroundColor = customGrayColor
            S2Button.backgroundColor = BlueColor
            S3Button.backgroundColor = customGrayColor
            S4Button.backgroundColor = customGrayColor
            S5Button.backgroundColor = customGrayColor
            S6Button.backgroundColor = customGrayColor
            S7Button.backgroundColor = customGrayColor
        case "110":
            S0Button.backgroundColor = customGrayColor
            S1Button.backgroundColor = customGrayColor
            S2Button.backgroundColor = customGrayColor
            S3Button.backgroundColor = BlueColor
            S4Button.backgroundColor = customGrayColor
            S5Button.backgroundColor = customGrayColor
            S6Button.backgroundColor = customGrayColor
            S7Button.backgroundColor = customGrayColor
        case "001":
            S0Button.backgroundColor = customGrayColor
            S1Button.backgroundColor = customGrayColor
            S2Button.backgroundColor = customGrayColor
            S3Button.backgroundColor = customGrayColor
            S4Button.backgroundColor = BlueColor
            S5Button.backgroundColor = customGrayColor
            S6Button.backgroundColor = customGrayColor
            S7Button.backgroundColor = customGrayColor
        case "101":
            S0Button.backgroundColor = customGrayColor
            S1Button.backgroundColor = customGrayColor
            S2Button.backgroundColor = customGrayColor
            S3Button.backgroundColor = customGrayColor
            S4Button.backgroundColor = customGrayColor
            S5Button.backgroundColor = BlueColor
            S6Button.backgroundColor = customGrayColor
            S7Button.backgroundColor = customGrayColor
        case "011":
            S0Button.backgroundColor = customGrayColor
            S1Button.backgroundColor = customGrayColor
            S2Button.backgroundColor = customGrayColor
            S3Button.backgroundColor = customGrayColor
            S4Button.backgroundColor = customGrayColor
            S5Button.backgroundColor = customGrayColor
            S6Button.backgroundColor = BlueColor
            S7Button.backgroundColor = customGrayColor
        case "111":
            S0Button.backgroundColor = customGrayColor
            S1Button.backgroundColor = customGrayColor
            S2Button.backgroundColor = customGrayColor
            S3Button.backgroundColor = customGrayColor
            S4Button.backgroundColor = customGrayColor
            S5Button.backgroundColor = customGrayColor
            S6Button.backgroundColor = customGrayColor
            S7Button.backgroundColor = BlueColor
        default:
            print("error")
        }
        
        switch xiaGuaShuZi {
        case "000":
            X0Button.backgroundColor = BlueColor
            X1Button.backgroundColor = customGrayColor
            X2Button.backgroundColor = customGrayColor
            X3Button.backgroundColor = customGrayColor
            X4Button.backgroundColor = customGrayColor
            X5Button.backgroundColor = customGrayColor
            X6Button.backgroundColor = customGrayColor
            X7Button.backgroundColor = customGrayColor
        case "100":
            X0Button.backgroundColor = customGrayColor
            X1Button.backgroundColor = BlueColor
            X2Button.backgroundColor = customGrayColor
            X3Button.backgroundColor = customGrayColor
            X4Button.backgroundColor = customGrayColor
            X5Button.backgroundColor = customGrayColor
            X6Button.backgroundColor = customGrayColor
            X7Button.backgroundColor = customGrayColor
        case "010":
            X0Button.backgroundColor = customGrayColor
            X1Button.backgroundColor = customGrayColor
            X2Button.backgroundColor = BlueColor
            X3Button.backgroundColor = customGrayColor
            X4Button.backgroundColor = customGrayColor
            X5Button.backgroundColor = customGrayColor
            X6Button.backgroundColor = customGrayColor
            X7Button.backgroundColor = customGrayColor
        case "110":
            X0Button.backgroundColor = customGrayColor
            X1Button.backgroundColor = customGrayColor
            X2Button.backgroundColor = customGrayColor
            X3Button.backgroundColor = BlueColor
            X4Button.backgroundColor = customGrayColor
            X5Button.backgroundColor = customGrayColor
            X6Button.backgroundColor = customGrayColor
            X7Button.backgroundColor = customGrayColor
        case "001":
            X0Button.backgroundColor = customGrayColor
            X1Button.backgroundColor = customGrayColor
            X2Button.backgroundColor = customGrayColor
            X3Button.backgroundColor = customGrayColor
            X4Button.backgroundColor = BlueColor
            X5Button.backgroundColor = customGrayColor
            X6Button.backgroundColor = customGrayColor
            X7Button.backgroundColor = customGrayColor
        case "101":
            X0Button.backgroundColor = customGrayColor
            X1Button.backgroundColor = customGrayColor
            X2Button.backgroundColor = customGrayColor
            X3Button.backgroundColor = customGrayColor
            X4Button.backgroundColor = customGrayColor
            X5Button.backgroundColor = BlueColor
            X6Button.backgroundColor = customGrayColor
            X7Button.backgroundColor = customGrayColor
        case "011":
            X0Button.backgroundColor = customGrayColor
            X1Button.backgroundColor = customGrayColor
            X2Button.backgroundColor = customGrayColor
            X3Button.backgroundColor = customGrayColor
            X4Button.backgroundColor = customGrayColor
            X5Button.backgroundColor = customGrayColor
            X6Button.backgroundColor = BlueColor
            X7Button.backgroundColor = customGrayColor
        case "111":
            X0Button.backgroundColor = customGrayColor
            X1Button.backgroundColor = customGrayColor
            X2Button.backgroundColor = customGrayColor
            X3Button.backgroundColor = customGrayColor
            X4Button.backgroundColor = customGrayColor
            X5Button.backgroundColor = customGrayColor
            X6Button.backgroundColor = customGrayColor
            X7Button.backgroundColor = BlueColor
        default:
            print("error")
        }
    }
    
    
    
}

