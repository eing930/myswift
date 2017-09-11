//
//  mydic.swift
//  Myswift05
//
//  Created by user20 on 2017/9/11.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation
//Array => 1. 有順序性(index) 2.元素可以重複
//Set => 1.無順序性 2。元素不可以重複
//Dictionary => 1. 無順序性 2。元素可以重複

func mydic(){
    var d1:[Int:String] = [:] //Dictionary [Int:String]
    print(type(of:d1))
    var d2 = [Int:String]()
    print(type(of:d2))
    let d3:[Int:String] = Dictionary()
    print(type(of:d3))
    
    var d4:[Int:String] = [1:"a", 2:"b" , 3:"c"]
    print(d4.count)
    print(d4)
    print(d4[2]!)
    d4[3] = "abc"
    print(d4.count)
    print(d4)
    d4[3] = "aaa"
    print(d4.count)
    print(d4)
    
    var d5:[String:Int] = [:]
    d5["weight"] = 80
    d5["age"] = 51
    print(d5)
    for (k,v) in d5 {
        print("\(k) : \(v)")
    }
    var line:[[String:Int]] =  Array()
    print(type(of:line))
    
    line += [["X":12, "Y":100]]
    line += [["X":13, "Y":101]]
    line += [["X":14, "Y":102]]
    line += [["X":15, "Y":103]]
    line += [["X":16, "Y":104]]

    print(line)
    for point in line {
    let x = point["X"]
         let y = point["Y"]
        print("(\(x!),\(y!))")
    }
    
}
