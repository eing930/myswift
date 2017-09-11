//
//  mytuple.swift
//  Myswift05
//
//  Created by user20 on 2017/9/11.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation
func tupletest(){
    let p1 = (10,24)  // tuple,資料組 -> (Int, Int)
    print(type(of:p1))

    print(p1.0)
    print(p1.1)
    
    let (x1, y1) = p1
    print(x1)
    print(y1)
    
    let p2 = (11,22)  //資料數量跟形別都要一樣才能比較
    if p1 > p2 {
    print("OK1")
    }else{
    print("xx1")
    }
    
    let p3 = (p1, p2)
    print(type(of:p3))
    print(p3.1.1)
    
    let p4:(x:Double, y:String) = (1, "2")
    print(p4.x)
    print(p4.0)
    
    let p5 = (x:11, y:"22")
    print(p5.y)
    
    
    
    
    
}
