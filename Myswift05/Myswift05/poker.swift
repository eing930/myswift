//
//  poker.swift
//  Myswift05
//
//  Created by user20 on 2017/9/8.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation
func poker(){
    let n = 52
    var poker:[Int]=Array()
    for i in 0..<n {poker += [i]}
    print(poker.description)
    poker = shullfe(source: poker)
    print(poker.description)
   
    var players:[[Int]] = [[],[],[],[]]  //發牌給四個人
    
    for (i, card) in poker.enumerated(){
    players[i%4]  += [card]
    }
    
    let suits = ["黑桃","紅心","方塊","梅花"]
    let values = ["A","1","2","3","4","5","6","7","8","9","10","I","Q","k"]
    for i in 0..<players.count{
        players[i].sort()
        for card in players[i]{
        print("\(suits[card/13])\(values[card%13])", terminator:" ")
        }
        print()
    }
    }

func shullfe(source:Array<Int>) -> Array<Int>{
    var poker = source
    let n = poker.count
    var rand = -1
    var temp = -1
    var max = -1
    for i in 0..<n {
        max = n - i
        rand = Int(arc4random_uniform(UInt32(max)))
    
        temp = poker[rand]
        poker[rand] = poker[max-1]
        poker[max-1] = temp
    }
    return poker
    
    
    
    
    
    
    
    
    
    
}


    

