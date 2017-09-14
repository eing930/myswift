//
//  test2.swift
//  Myswift08
//
//  Created by user20 on 2017/9/14.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation

func test2(){
            //1,2,3,4,5,6
    var p = [0,0,0,0,0,0]
    var s = 0
    
    for c in 1...100 {
        s = Int(arc4random_uniform(6))
        print(s)
     p[s] = p[s] + 1
        print(p)
        
    }
    print(p)
}
