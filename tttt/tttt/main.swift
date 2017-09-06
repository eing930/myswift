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
    print("D")
}else {
    print("E")
}

var str1:String? = "Brad"//有？號的是有選項
if str1 == "Brad"{
    print("ok")
}else{
    print("xx")
}
print (str1 as Any)
str1 = nil
print (str1 ?? 0)  //預設值

var str2:String = "III"

for i in 1 ... 9 {  //印出1到9
    print(i)
}

var sum = 0         //一加到一百的for迴圈
for i in 1 ... 100{
    sum += i
}
print(sum)


var j = 1    //swift 3 沒有加加減減乘乘除除 ex: j++ 是跑不出來的
j += 1
print(j)

var (x,y,z) = (1,"brad", true)  //資料形別資料組
print(y)

var Var9 = "123"
var Var8:Int? = Int(Var9)
print (Var8 ?? 0 )

print("Input a number :", terminator: "")
var n1:String? = readLine() //Optional (String)
var n2:Int? = Int(n1!)!  // n1! => 強制 加上「!」是強制執行的意思

var sum2 = 0
for i in 1 ... n2!{
    sum2 += i
}
print(sum2)


var i1 = 1   //Int(整數)
var i2 = 10  //Int(整數)
for ii in i1 ... i2{
    print("ok")
}

for _ in 1 ... 5 {   //直接用「 _ 」 不用給變數var ，在print()直接給值
    print("kkk")
}


var VarA = 12 + 12.3
print(VarA)



