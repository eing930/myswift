//
//  MyClasses.swift
//  Myswift08
//
//  Created by user20 on 2017/9/14.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation    //建構式 

class Super1 {
    init(){
    print("Super1:init()")
    }
}
class Sub11 : Super1{
    //編譯時期已經加入Super1.init()
}

class Sub12 : Super1{
    override init(){
    //隱含呼叫 Super1.init()@第一列 before return
        print("Sub2:init")
    }
}

class Sub13 : Super1 {
    init(_:Int){
        //隱含都有在呼叫
        }
}
class Sub131 : Sub12 {
    override init(){
        print("Sub131:init")
    }
}

//-------------------------
//任何一個子類別都要呼叫父類別 「 super.init() 」

class Super2 {
    init(){
        print("Super2:init()")
    }
    init(_:Int){
        print("Super2:init(Int)")

    }
}
class Sub21 : Super2{
}
class Sub22 : Super2{
    override init() {
        print("Sub22:init()")
        super.init()  //must be call init() before return
    }
    override init(_ x:Int){
          print("Sub22:init()")
        super.init(2)
    }
}
