//
//  loop.swift
//  Myswift05
//
//  Created by user20 on 2017/9/12.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation

func loop(){
var a = 1
    while a < 10 {
    print(a)
        a += 1
    }
    print(a)
    
    var b = 1
    repeat {
    b += 1
    }while b < 10
    
    print(b)
    
    // 1 + 2 + 3 ....100

var i = 1, sum = 0
    while i <= 100 {
        sum += i
            i += 1
        
    }
    print("1 + 2 + ... + 100 =\(sum)")

    // poker
    var poker:[Int] = Array()
    var rand = 0
    var isRepeat = false
    for i in 0..<52 {
        repeat{
        rand = Int(arc4random_uniform(52))
        isRepeat = false
            for j in 0..<i {
                if rand == poker[j]{
                isRepeat = true
                    break
                }
                    }
        
    } while isRepeat
    poker += [rand]
    print(poker)
    }
    
    
    
    

}
