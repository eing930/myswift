//
//  mystr.swift
//  Myswift05
//
//  Created by user20 on 2017/9/8.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation

func mystr(){
    var name = "Hello,"
    print(type(of:name))
    
    name += "許尹靜"
    print(name)
    print(name.unicodeScalars.count)
    print(name.utf16.count)
    print(name.utf8.count) // 字元的大小
    
    print(name)
    
    for c in name.characters{  //尋訪每個字
    print(c)
        
    let chars = Array(name.characters)
        print(type(of:chars))
        print(chars.count)
        print(chars[5])
        
        let newname = String(chars)
        print(type(of:newname))
        print(newname)
        
        let cs1 = ["A","B","C","D"]
        print(type(of:cs1))
        let cs2:[Character] = ["A","B","C","D"]  //字串只可以一個，字元可以很多個
        print(type(of:cs2))
        
        let ns2 = String(cs2)
        print(ns2)
        
        let letters = "abcdefghijklmnopqrxyz"
        print(letters)
        print(letters.unicodeScalars.count) //算出有多少個字元
        
      
//        
//        let from = letters.index(letters.startIndex,offsetBy: 2)
//        let to = letters.index(letters.startIndex,offsetBy: 5)
//        let range = from..<to
//        print(type(of:range))
//        print(letters.substring(with: range))
//        
//    }
//    func mysubstr(source:String, from:Int, to:Int) ->String {
//        let start = source.index(source.startIndex,offsetBy: from)
//        let end = source.index(source.startIndex,offsetBy: to)
//        let range = start..<end
//        return source.substring(with: range)
// }
//    let range = getStringRange(source: letters, from:4, to: 9)
//    letters.replaceSubrange(range, with: "1234")
//    print(letters)
//}
    
func mystr2(){
    var a1:String? = "yvonne"
    if let a2 = a1{
        print(type(of:a2))
        print("OK3:\(a1)\(a2)")
    }else{
        print("xx33")
    }
    
    let twid = "A123456789"  //身份証字號
    if let range = twid.range(of: "12a34") {
        print("ok4")
    }else{
        print("xx4")
    }
    
    if let range = twid.range(of: "", options: .regularExpression){
    print("ok5")
        
    }else{
    print("xx5")
    }
    
    
    
    
    
    
    
        }
        
        

    }}
