//
//  switch.swift
//  Myswift05
//
//  Created by user20 on 2017/9/12.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation
func switchtest(){  //做比對
    
    let a = 10
    switch a {
    case 1, 2, 3, 4:
        print("A")
    case 10:
        print("B")
        fallthrough//往下流
    case 100:
        print("C")
    default :  //default永遠擺最後一個
        print("X")
    
    }
    print("-----------")

   let month = Int(arc4random_uniform(12) + 1 )
   print(month)
    switch month {
    case 1, 3, 5, 7, 8, 10, 12:
        print(31)
    case 4, 6, 9, 11:
        print(30)
    case 2:
        print(28)
    default:
        print("xx")
    }
    print("--------------")
    
    let score = Int(arc4random_uniform(101))
    print(score)
    switch score{
    case 90 ..< 100:
        print("A")
        case 80 ..< 90:
        print("b")
        case 70 ..< 80:
        print("c")
        case 60 ..< 70:
        print("d")
        case 0 ..< 60:
        print("d")
        
        default:
        print("xx")
    
    }
    print("------------")
    
    let b:Double = 4.0 //Double 是小數點
    switch b {
    case 4.00000:
        print("A1")
    case 3.000:
        print("A2")
    case 2.29438:
        print("A3")
    case 1.344:
        print("A4")
    default:
        print("xx")
    
    }
    print("------------")
    // tuple   三個數字做比對 ，數量跟形別都要一樣才能比對
    
    let d = (1,"2",3) //(Int, String ,Int)
    switch d {
    case (9...19,"2",3):
        print("c1")
    case (_,"9",3):  // 「_ 」 隨便一個值都算符合
        print("c2")
    case (7,"8",3):
        print("c3")
//    default:
//        print("xx")
    case let (x,y,z):  //不寫default 直接給變數
        print ("\(x),\(y),\(z)")
    
    }
print("------------")
    
    let point = (123, -123)
    switch point {
    case let (x,y) where x == y:
        print("A")
    case let (x,y) where -x == -y:
        print("B")
    case let (x,y):
        print("C")
    
    
    }
    
    
}
