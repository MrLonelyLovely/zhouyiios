//
//  ShangXiaGuaResult.swift
//  ZHOUYI
//
//  Created by 陈沛 on 2019/5/7.
//  Copyright © 2019 FENGYX. All rights reserved.
//

//import Foundation
import UIKit

/*
 enum ShangXiaGuaResult:String{
 
 //    typealias RawValue = <#type#>
 case qianWeiTian = "000000"
 case tianFengHou = "000001"
 case tianShanDun = "000011"
 case tianDiPi = "000111"
 case fengDiGuan = "001111"
 case diShanBo = "011111"
 case huoDiJin = "010111"
 case huoTianDaYou = "010000"
 case kunWeiDi = "111111"
 case diLeiFu = "111110"
 case diZeLin = "111100"
 case diTianTai = "111000"
 case leiTianDaZhuang = "110000"
 case zeTianYang = "100000"
 case shuiTianXu = "101000"
 case shuiDiBi = "101111"
 case zhenWeiLei = "110110"
 case leiDiYu = "110111"
 case leiShuiJie = "110101"
 case leiFengHeng = "110001"
 case diFengSheng = "111001"
 case shuiFengSheng = "101001"
 case zeFengDaGuo = "100001"
 case zeLeiSui = "100110"
 case jiWeiFeng = "001001"
 case fengTianXiaoChu = "001000"
 case fengHuoJiaRen = "001010"
 case fengLeiYi = "00000"  //有错
 case tianLeiWuWang = "000110"
 case huoLeiShiKe = "010110"
 case shanLeiYi = "011110"
 case shanFengGu = "011001"
 case kanWeiShui = "101101"
 case shuiZeJie = "101100"
 case shuiLeiTun = "101110"
 case shuiHuoJiJi = "101010"
 case zeHuoGe = "100010"
 case leiHuoFeng = "110010"
 case diHuoMingYi = "111010"
 case diHuoShi = "111101"
 case liWeiHuo = "010010"
 case huoShanLv = "010011"
 case huoFengDing = "010001"
 case huoShuiWeiJi = "010101"
 case shanShuiMeng = "011101"
 case fengShuiHuan = "001101"
 case tianShuiSong = "000101"
 case tianHuoTongRen = "000010"
 }
 */

class ShangXiaGuaResult:NSObject {
    /*
     let GuaFor64:[String:String] = [
     "qianWeiTian" : "000000",
     "tianFengHou" : "000001",
     "tianShanDun" : "000011",
     "tianDiPi" : "000111",
     "fengDiGuan" : "001111",
     "diShanBo" : "011111",
     "huoDiJin" : "010111",
     "huoTianDaYou" : "010000",
     "kunWeiDi" : "111111",
     "diLeiFu" : "111110",
     "diZeLin" : "111100",
     "diTianTai" : "111000",
     "leiTianDaZhuang" :"110000",
     "zeTianYang" : "100000",
     "shuiTianXu" : "101000",
     "shuiDiBi" : "101111",
     "zhenWeiLei" : "110110",
     "leiDiYu" : "110111",
     "leiShuiJie" : "110101",
     "leiFengHeng" : "110001",
     "diFengSheng" : "111001",
     "shuiFengSheng" : "101001",
     "zeFengDaGuo" : "100001",
     "zeLeiSui" : "100110",
     "jiWeiFeng" : "001001",
     "fengTianXiaoChu" : "001000",
     "fengHuoJiaRen" : "001010",
     "fengLeiYi" : "001110",
     "tianLeiWuWang" : "000110",
     "huoLeiShiKe" : "010110",
     "shanLeiYi" : "011110",
     "shanFengGu" : "011001",
     "kanWeiShui" : "101101",
     "shuiZeJie" : "101100",
     "shuiLeiTun" : "101110",
     "shuiHuoJiJi" : "101010",
     "zeHuoGe" : "100010",
     "leiHuoFeng" : "110010",
     "diHuoMingYi" : "111010",
     "diHuoShi" : "111101",
     "liWeiHuo" : "010010",
     "huoShanLv" : "010011",
     "huoFengDing" : "010001",
     "huoShuiWeiJi" : "010101",
     "shanShuiMeng" : "011101",
     "fengShuiHuan" : "001101",
     "tianShuiSong" : "000101",
     "tianHuoTongRen" : "000010",
     "genWeiShan" : "011011",
     "shanHuoFen" : "011010",
     "shanHuoDaChu" : "011000",
     "shanZeSun" : "011100",
     "huoZeKui" : "010100",
     "tianZeLv" : "000100",
     "fengZeZhongFu" : "001100",
     "fengShanJian" : "001011",
     "duiWeiZe" : "100100",
     "zeShuiKun" : "100101",
     "zeDiCui" : "100111",
     "zeShanXian" : "100011",
     "shanShuiJian" : "101011",
     "diShanQian" : "111011",
     "leiShanXiaoGuo" : "110011",
     "leiZeGuiMei" : "110100"
     ]
     */
    
    static let result0:(String,String,String,String) = ("000000","乾宫","本宫卦","乾为天")
    static let result1:(String,String,String,String) = ("000001","乾宫","一世卦","天风姤")
    static let result2:(String,String,String,String) = ("000011","乾宫","二世卦","天山遁")
    static let result3:(String,String,String,String) = ("000111","乾宫","三世卦","天地否")
    static let result4:(String,String,String,String) = ("001111","乾宫","四世卦","风地观")
    static let result5:(String,String,String,String) = ("011111","乾宫","五世卦","山地剥")
    static let result6:(String,String,String,String) = ("010111","乾宫","游魂卦","火地晋")
    static let result7:(String,String,String,String) = ("010000","乾宫","归魂卦","火天大有")
    
    static let result8:(String,String,String,String) = ("111111","坤宫","本宫卦","坤为地")
    static let result9:(String,String,String,String) = ("111110","坤宫","一世卦","地雷复")
    static let result10:(String,String,String,String) = ("111100","坤宫","二世卦","地泽临")
    static let result11:(String,String,String,String) = ("111000","坤宫","三世卦","地天泰")
    static let result12:(String,String,String,String) = ("110000","坤宫","四世卦","雷天大壮")
    static let result13:(String,String,String,String) = ("100000","坤宫","五世卦","泽天夬")
    static let result14:(String,String,String,String) = ("101111","坤宫","游魂卦","水天需")
    static let result15:(String,String,String,String) = ("101111","坤宫","归魂卦","水地比")
    
    static let result16:(String,String,String,String) = ("110110","震宫","本宫卦","震为雷")
    static let result17:(String,String,String,String) = ("110111","震宫","一世卦","雷地豫")
    static let result18:(String,String,String,String) = ("110101","震宫","二世卦","雷水解")
    static let result19:(String,String,String,String) = ("110001","震宫","三世卦","雷风恒")
    static let result20:(String,String,String,String) = ("111001","震宫","四世卦","地风升")
    static let result21:(String,String,String,String) = ("101001","震宫","五世卦","水风井")
    static let result22:(String,String,String,String) = ("100001","震宫","游魂卦","泽风大过")
    static let result23:(String,String,String,String) = ("100110","震宫","归魂卦","泽雷随")
    
    static let result24:(String,String,String,String) = ("001001","巽宫","本宫卦","巽为风")
    static let result25:(String,String,String,String) = ("001000","巽宫","一世卦","风天小畜")
    static let result26:(String,String,String,String) = ("001010","巽宫","二世卦","风火家人")
    static let result27:(String,String,String,String) = ("001110","巽宫","三世卦","风雷益")
    static let result28:(String,String,String,String) = ("000110","巽宫","四世卦","天雷无妄")
    static let result29:(String,String,String,String) = ("010110","巽宫","五世卦","火雷噬嗑")
    static let result30:(String,String,String,String) = ("011110","巽宫","游魂卦","山雷颐")
    static let result31:(String,String,String,String) = ("011001","巽宫","归魂卦","山风蛊")
    
    static let result32:(String,String,String,String) = ("101101","坎宫","本宫卦","坎为水")
    static let result33:(String,String,String,String) = ("101100","坎宫","一世卦","水泽节")
    static let result34:(String,String,String,String) = ("101110","坎宫","二世卦","水雷屯")
    static let result35:(String,String,String,String) = ("101010","坎宫","三世卦","水火既济")
    static let result36:(String,String,String,String) = ("100010","坎宫","四世卦","泽火革")
    static let result37:(String,String,String,String) = ("110010","坎宫","五世卦","雷火丰")
    static let result38:(String,String,String,String) = ("111010","坎宫","游魂卦","地火明夷")
    static let result39:(String,String,String,String) = ("111101","坎宫","归魂卦","地水师")
    
    static let result40:(String,String,String,String) = ("010010","离宫","本宫卦","离为火")
    static let result41:(String,String,String,String) = ("010011","离宫","一世卦","火山旅")
    static let result42:(String,String,String,String) = ("010001","离宫","二世卦","火风鼎")
    static let result43:(String,String,String,String) = ("010101","离宫","三世卦","火水未济")
    static let result44:(String,String,String,String) = ("011101","离宫","四世卦","山水蒙")
    static let result45:(String,String,String,String) = ("001101","离宫","五世卦","风水涣")
    static let result46:(String,String,String,String) = ("000101","离宫","游魂卦","天水讼")
    static let result47:(String,String,String,String) = ("000010","离宫","归魂卦","天火同人")
    
    static let result48:(String,String,String,String) = ("011011","艮宫","本宫卦","艮为山")
    static let result49:(String,String,String,String) = ("011010","艮宫","一世卦","山火贲")
    static let result50:(String,String,String,String) = ("011000","艮宫","二世卦","山火大畜")
    static let result51:(String,String,String,String) = ("011100","艮宫","三世卦","山泽损")
    static let result52:(String,String,String,String) = ("010100","艮宫","四世卦","火泽睽")
    static let result53:(String,String,String,String) = ("000100","艮宫","五世卦","天泽履")
    static let result54:(String,String,String,String) = ("001100","艮宫","游魂卦","风泽中孚")
    static let result55:(String,String,String,String) = ("001011","艮宫","归魂卦","风山渐")
    
    static let result56:(String,String,String,String) = ("100100","兑宫","本宫卦","兑为泽")
    static let result57:(String,String,String,String) = ("100101","兑宫","一世卦","泽水困")
    static let result58:(String,String,String,String) = ("100111","兑宫","二世卦","泽地萃")
    static let result59:(String,String,String,String) = ("100011","兑宫","三世卦","泽山咸")
    static let result60:(String,String,String,String) = ("101011","兑宫","四世卦","水山蹇")
    static let result61:(String,String,String,String) = ("111011","兑宫","五世卦","地山谦")
    static let result62:(String,String,String,String) = ("110011","兑宫","游魂卦","雷山小过")
    static let result63:(String,String,String,String) = ("110100","兑宫","归魂卦","雷泽归妹")
    
    static let arrayFor64Gua = [result0,result1,result2,result3,result4,result5,result6,result7,
                         result8,result9,result10,result11,result12,result13,result14,result15,
                         result16,result17,result18,result19,result20,result21,result22,result23,
                         result24,result25,result26,result27,result28,result29,result30,result31,
                         result32,result33,result34,result35,result36,result37,result38,result39,
                         result40,result41,result42,result43,result44,result45,result46,result47,
                         result48,result49,result50,result51,result52,result53,result54,result55,
                         result56,result57,result58,result59,result60,result61,result62,result63
    ]
}
