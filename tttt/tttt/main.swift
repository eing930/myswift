//
//  main.swift
//  tttt
//
//  Created by user20 on 2017/9/6.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation


var Var1 = true //false=>Bool
var Var2 = 123;
var Var3 = 12.3;
var Var4 = "Brad"
print(type(of: Var4))

typealias byte = Int8
var Var5:byte = 12
print(type(of:Var5))

print("My name is" + Var4)
print("My name is\(Var4), Var3 = \(Var3)")


var Var6 = String(format:"Weight = %d",80)
print(Var6)

var rand1 = arc4random();
print(type(of:rand1))
print(rand1 % 101) //亂碼 1~100

var rand2 = arc4random_uniform(101)
print(rand2)//亂碼

var test1 = rand2 >= 60
print(type(of:test1))

if rand2 >= 60 {
    print ("Pass")
}else{
    print ("Down")
}

var rand3 = arc4random_uniform(101)
print(rand3)

if rand3 >= 90 {
    print("A")
}else if rand3 >= 80 {
    print("B")
}else if rand3 >= 70 {
    print("C")
}else if rand3 >= 60 {
    print("D");
}else {
    print("E")
}







