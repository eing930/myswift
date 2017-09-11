//
//  myset.swift
//  Myswift05
//
//  Created by user20 on 2017/9/11.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation

    //Array => 1. 有順序性(index) 2.元素可以重複
    //Set => 1.無順序性 2。元素不可以重複
    //Dictionary => 1. 無順序性 2。元素可以重複
 func myset(){
    var s1 = Set<Int>() //Set, 元素為Int
    
    print(type(of:s1))
    print(s1.count)
    s1.insert(123)
    s1.insert(321)
    s1.insert(55)
    s1.insert(3)
    print(s1.count)
     s1.insert(123)
     s1.insert(321)
    print(s1.count)
    print(s1)
    s1.remove(321)
    print(s1)
    print(s1.popFirst()!)
    print(s1)
    for v in s1{
    print(v)
    }
    
    //出樂透 1 - 49 => 6
    var lot = Set<Int>()
    while lot.count < 6 {
    lot.insert(Int(arc4random_uniform(49)+1))  //用while寫出亂數，不按順序跳出號碼
    }
    print(lot)
    
    for v in lot.sorted() {  //「sorted」加入這個號碼就會分類照順序排列
    print(v)
    }
    
    var iterator = lot.makeIterator()
    while let v = iterator.next(){
        print(v)
    }
    
    
    
    
    


}
