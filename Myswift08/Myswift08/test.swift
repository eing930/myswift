//
//  test.swift
//  Myswift08
//
//  Created by user20 on 2017/9/14.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation

func test(){ //p 是六個面，point是骰子
    var s = [0,0,0,0,0,0] //次數
    var p = 0
    
    for c in 1...100{
    
    p = Int(arc4random_uniform(6))
    s[p] = s[p] + 1
     print("p跑出:\(p + 1)")
        
    }
    
//    s[位置] = s[位置] + 1
    print("一點:\(s[0])次 ，二點:\(s[1])次 ，三點:\(s[2])次，四點:\(s[3])次，五點:\(s[4])次，六點:\(s[5])次")
    

    
    
    
    
    
    
    
    
    
    
//    var point2 = arc4random_uniform(6)+1
//    var point3 = arc4random_uniform(6)+1
//    print("----")
//    for p in 1...10{
//        var point1 = arc4random_uniform(6)+1   //5
//        switch point1 {
//        case 1:
//            print("1")
//        case 2:
//            print("2")
//        case 3:
//            print("3")
//        case 4:
//            print("4")
//        case 5:
//            print("5")
//        case 6:
//            print("6")
//        default:
//            print("XX")
//            
//            
//        }
//    }
//    print("----")

  
    
    
    
    
    
    
}
