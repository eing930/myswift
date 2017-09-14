//
//  MyClasses.swift
//  Myswift08
//
//  Created by user20 on 2017/9/14.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation

class Super1 {
    init(){
    print("Super1:init()")
    }
}
class Sub1 : Super1{
    //編譯時期已經加入Super1.init()
}

class Sub2 : Super1{
    override init(){
    //隱含呼叫 Super1.init()@第一列
        print("Sub2:init")
    }
}
