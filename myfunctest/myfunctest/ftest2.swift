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
    
    //身份証產生
    let letters = "ABCDEFGHJKLMNPQRSTUVXYWZIO"
    let alpha:Character = "O"
    let n12 = indexOf(source:letters, find:alpha) + 10
    let n1 = n12 / 10
    let n2 = n12 % 10
    print("\(n1) : \(n2)")
   
    
    let dic:[String:Int] = ["A":10,"B":11,"C":12,"D":13]
    print(dic["A"]!)
    
    
    
    let v1 = indexOf(source: letters, find: alpha)
    print(v1)
    
    brad7()
    brad7(x: "111", "222", "333")
    
    brad8(value: 3)
    brad8(value: 2)
    
    let (x, y, z) = brad9()
    print("\(x) : \(y) : \(z)")
    
    

    
}
func brad9() -> (Int, Double, String){
    return(1, 2.3, "brad")
}

func brad8(value x : Int){
print(x)
}
func brad7(x:String...){
    for name in x {
    print("brad7")
    }

}

func indexOf(source:String, findlast:Character) -> Int{
//    var ary:[Character] = Array()
//    for c in source.characters{
//    ary += [c]
//    }
    //print(ary)
    
    let cs = Array(source.characters)
    print(cs)
    
//    for i in stride(from: 1, to: 10, by: 3){
//    print(i)
//        for i in stride(from: 10, through: 1, by:-1 ){
//        print(i)
//            
//            for i in stride(from: 10, through: 1, by: -1){
//            print(i)
//            }
//        }
//    }
//    
    for i in stride(from: cs.count-1, through: 0, by: -1){
    print(i)
    }
 return -1
}
func indexOf(source:String, find:Character) -> Int{
    var ret = -1, i = 0
    for c in source.characters {
        if c == find {
            ret = i
        break
        }
        i += 1
    }
    return ret
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

