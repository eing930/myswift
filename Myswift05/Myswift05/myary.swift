//
//  myary.swift
//  Myswift05
//
//  Created by user20 on 2017/9/6.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation
func myary() {
    let a1 = [1,2,3]   //自動推斷 =>Array<Int>
    print(type(of:a1))
    print(a1[0])
    
    let a2:[Any] = [ 1, 2,"brad" ] // :[] =>陣列[型態]
     print(type(of:a2))
     print(a2[1])

    //以下為宣告方式，全部一樣的效果
    let ary1:[Int] = []
    let ary2:[Int] = Array()
    let ary3:Array<Int> = []
    let ary4:Array<Int> = Array()
    let ary5 = Array<Int>.init()
    
    let ary6:[Int] = [1,2,3]
    if ary6.isEmpty {
        print("Empty")
    }else{
        print("Not Empty: \(ary6.count)")
    }
    
        
    let ary7 = Array(repeating: 3, count: 10)
        print(ary7.description)
    
    for v in ary7 {
        print(v)
    }
 // 擲骰子 : 100次統計各點出現次數
    var p = Array(repeating: 0, count: 6)//骰子代號「p」從0到6點
    var point = -1 //Int
    for _ in 1 ... 100 {
        point = Int(arc4random_uniform(6))  //產生亂數
        p[point] += 1
    }
    
    print(p.description)
    
//    for v in p {
//        print(v)
//    }
//    
//    for i in 0  ..<p.count {
//        print
//    }
//    for (i,value) in p.enumerated(){
//        print("\(i+1)點出現\(value)次")
//    }
//    
    
    print(p.description)
    p += [100]
    print(p.description)
    p += [101,102,103]
    print (p.description)
    
    //「append」在排列後加上這個數
    p.append(200)
    print(p.description)
    p.append(contentsOf: [201,202,203])
    print(p.description)
    
    
    //「insert」將300這個值排在第7位，這個效果可以用在把新的放前面
    p.insert(300, at: 0)
    p.insert(301, at: 0)
    p.insert(302, at: 0)
    p.insert(303, at: 0)
    p.insert(304, at: 0)
    print(p.description)
    
    p.remove(at: 3)
    print(p.description)
    
    p.replaceSubrange(1...7, with:[400])
    print(p.description)
    
    p[3...6] = [501,502,503,504,505]
    print(p.description)
    
    p[2...5] = []
    print(p.description)
    
    //反向排序
    p.reverse()
    print(p.description)
    
    var p2 = p
    print(type(of:p2))
    print(p2.description)
    
    p[2] = 700
    p += [000]
    print(p.description)
    print(p2.description)
    
    print("----")
    var i = 100
    
    
    


}
 
