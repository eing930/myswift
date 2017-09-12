//
//  ftest2.swift
//  myfunctest
//
//  Created by user20 on 2017/9/12.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation

func ftest2(){
    var brad4:(_:Int) ->Void = brad3
    brad4(2)
    brad4 = brad2
    brad4(5)
    brad4 = brad1
    brad4(1)
    
    var op:(_:Int, _:Int) ->Int = add  //做加減乘除
    op = div                            // 呼叫
    print(op(10,3))                     //印出值
    
    print(brad5(what: mult, x: 10, y:3))
    
    let letters = "ABCDEFG"
    let alpha = "D"
    print(indexOf(source:letters, find:alpha))//Int(3),else return(傳回0 -1
    
    
    
    
}
func brad5(what:(Int,Int) ->Int, x:Int, y:Int) -> String{
    print("start....")
    let s1 = what(x,y)
    return "result = \(s1)"
}


func add(x:Int ,y:Int) -> Int{ //加
    let result = x + y
    return result
}
func sub(x:Int ,y:Int) -> Int{ //減
    let result = x - y
    return result
}
func mult(x:Int ,y:Int) -> Int{ //乘
    let result = x * y
    return result
}
func div(x:Int ,y:Int) -> Int{  //除
    let result = x / y
    return result
}
func brad1(x:Int){
    print("brad1:\(x)")
}
func brad2(y:Int){
    print("brad2:\(y)")
}
func brad3(z:Int){
    print("brad3:\(z)")
}
