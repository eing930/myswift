//
//  TWId.swift
//  MySwift07
//
//  Created by user20 on 2017/9/13.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation   //建構式  物件導向

class TWId {
    private static let letters = "ABCDEFGHJKLMNPQRSTUVXYWZIO"
    private var id:String
    var gender:Bool {   //性別碼如何產生判斷男生女生
       return BradString.subString(source: id, from: 1, to: 2) == "1"
       
    }
   
    convenience init(){ //性別碼亂數
            let rand = arc4random_uniform(2)  // 0或1
            self.init(gender: rand == 0)
    }
    convenience init(area:String){
     let rand = arc4random_uniform(2)  // 0或1
     self.init(area: area, gender: rand == 0)
    }
    convenience init(gender:Bool){  //前面要加上「 convenience 」
        let rand = Int(arc4random_uniform(26))  //產生出 a-z的 0...25的英文亂碼
        let areaId = BradString.subString(source: TWId.letters, from: rand, to: rand + 1)
        self.init(area: areaId, gender: gender) //呼叫自己的建構式
        }
        init(area:String, gender:Bool){
        id = area
        id += (gender) ? "1" : "2"
        for _ in 3...9 {
            id += String(arc4random_uniform(10))
        }
        for c in 0...9 {
            if TWId.isRightId(id: id + String(c)){
                id += String(c)
                break
            }
        }
    }
    init?(id:String){
        if TWId.isRightId(id: id) {
            self.id = id
        }else{
            return nil  //用return nil 可能會是空的物件 所以在init後面要再加上「?」
        }
    }
    
    func getId() -> String {return id}
    func getArea() -> String {
        
        return "台中市"
    }
    static func isRightId(id:String) -> Bool {
        var isRight = false;
        if let _ = id.range(of: "^[A-Z][12][0-9]{8}$", options: .regularExpression){
            
            let cs = Array(id.characters)   // Array<Character>
            
            let c1 = cs[0]   // String  //套用 "Myapi"的func "BradString"
            let n12 = BradString.indexOf(source: letters, find: c1) + 10
            let n1 = n12 / 10
            let n2 = n12 % 10 * 9
            let n3:Int? = Int(String(cs[1]))! * 8
            let n4:Int? = Int(String(cs[2]))! * 7
            let n5:Int? = Int(String(cs[3]))! * 6
            let n6:Int? = Int(String(cs[4]))! * 5
            let n7:Int? = Int(String(cs[5]))! * 4
            let n8:Int? = Int(String(cs[6]))! * 3
            let n9:Int? = Int(String(cs[7]))! * 2
            let n10:Int? = Int(String(cs[8]))! * 1
            let n11:Int? = Int(String(cs[9]))! * 1
            
            let sum = n1 + n2 + n3! + n4! + n5! + n6! + n7! + n8! + n9! + n10! + n11!
            
            isRight = sum % 10 == 0
        }
        
        return isRight
    }
    
}
