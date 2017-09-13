//
//  MyClasses.swift
//  MySwift07
//
//  Created by user20 on 2017/9/13.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation

class PointV3 {
    var x = 0
    var y = 0
}

class PointV4 {
    var x:Int
    var y:Int
    init(){
        x = 1
        y = 2
    }
    // 建構式 constructor
    init(x:Int, y:Int){
        self.x = x
        self.y = y
    }
}

class Bike {
    // 屬性
    // Bike has-a speed
    private var speed:Double
    init(speed:Double){
        self.speed = speed
    }
    func upSpeed(){
        speed = speed < 1 ? 1 : speed * 1.2
    }
    
    func dpwnSpeed(){
        speed = speed < 1 ? 0 : speed * 0.7
    }
    
    func getSpeed() -> Double {
        return speed
    }
    
    func clone() -> Bike {
        return Bike(speed: speed)
    }
}

class Student {
    private var name:String
    private var ch:Int
    private var eng:Int
    private var math:Int
    init(name:String,ch:Int, eng:Int, math:Int){
        self.name = name
        self.ch = ch
        self.eng = eng
        self.math = math
    }
    func sum() -> Int {
        return ch + eng + math
    }
    func avg() -> Double {
        return Double(sum()) / 3
    }
}

struct MyScore {
    var x = 0, y = 0, z = 0
    var sum: Int {
        get{
        return x + y + x
        }
        set{
        }
    }
    var avg: Double{
        return Double(sum) / 3.0
    }
}

class Brad05{
    var x:Int = 0 {
        willSet(newx){
            print("willSet:\(x)")
            print("willSet:\(newx)")
        }
        didSet{
            print("didSet")

        }
    }
}

class Brad06{
    //類別級別的
    static var x:Int!
    static var x1 = 123
    static var x2:Int{
        return x1*100
    }
    // non-static => 物件級別 => member 成員
    var x1 = 321
    func m1(){
        print("A")
        x1 = 111
        Brad06.x1 = 333
    }
    static func m1(){
        print("B")
        x1 = 222
        //無法修改物件別的 member 或是 呼叫 ，屬性修改/方法呼叫
    }
    
}
//以下玩類別物件的繼承關系 => 多型
// 父類別: Super, 子類別: Sub
class Super1{
    private var a = 1
    func getA() -> Int{
        return a
    }
    var b = 123
}
class Super2 {
    var a = 0   //物件級別
    static var counter = 0 // 類別級別
    init(){
        Super2.counter += 1
    }
    deinit{
        Super2.counter -= 1
        print("DIE")
    }
}

//Super1為 Sub1的super class
class Sub1 : Super1 {
    var a = 10
    var c:Int? //可以是nil 「?」

    override func getA() -> Int {
        print(super.getA())
        return a
    }
}

