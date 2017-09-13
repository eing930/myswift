//
//  ftext3.swift
//  myfunctest
//
//  Created by user20 on 2017/9/12.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation
//閉包 就是先大括號{} 然後型別 {(,,)in sort}

func ftest3(){
    var a1 = [1,4,23,24,77,43,67,76,89]
    a1.sort() //排序
    print(a1)
    
    var a2 = [1,4,23,24,77,43,67,76,89]
    a2.sort(by: myfunc2)
    print(a2)
    
    var a3 = [1,4,23,24,77,43,67,76,89]
    a3.sort(by:{x,y in
        return x < y
    })
    print(a3)
    
    var a5 = [1,4,23,24,77,43,67,76,89]
    a5.sort(by: { x, y in x < y})
    print(a5)
    
    var a6 = [1,4,23,24,77,43,67,76,89]
    a6.sort(by: { $0 < $1})
    print(a6)
    print("_______7")
    var a7 = [1,4,23,24,77,43,67,76,89]
    a7.sort(by: < )
    print(a7)
    
    //如果是百位數從大到小 二位數是從小到大
    var a8 = [1,101,23,24,55,106,67,104,89]
    a8.sort(by: { (x:Int,y:Int) ->Bool in
        var ret = false
        if x >= 100 && y >= 100{
            ret = x < y
        }else if x >= 100 && y  < 100{
            ret = true
        }else if x < 100 && y >= 100{
            ret = false
        }else{
            ret = x < y
        }
            return  ret
        
    } )
    print(a8)
    
//    myfunc3(x: 3, y: {(z) in
//        return "ok, \(z)"
//    })
//    
//    myfunc3(x: 3){
//    (z) in
//        return "OK1, \(z)"
//    }
//    myfunc3(x: 3){
//        return "ok2,\($0)"
//    }
    
    myfunc4()
}

//func myfunc3 (x:Int, y:Int) ->String{
//    print(y (x + 3))
//}
func myfunc4(){
    var a = 10
    print("before: a = \(a)")
    func myfunc41(){
    a += 1
        print("myfunc41")
    }
    
    myfunc41()
     myfunc41()
     myfunc41()
    print("after: a =\(a)")
    
}

func myfunc1(x:Int, y:Int) ->Bool{
    return x < y
}
func myfunc2(x:Int, y:Int) ->Bool{
    return x > y
}
