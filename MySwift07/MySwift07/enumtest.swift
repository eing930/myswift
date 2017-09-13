//
//  enumtest.swift
//  MySwift07
//
//  Created by user20 on 2017/9/13.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Foundation
//列舉
func enumtest(){
    var dir:Direction = .STOP
    
    dir = .LEFT
    dir = .RIGHT
    switch dir{
    case.STOP:
        print("stop")
    case.UP:
        print("up")
    case.DOWN:
        print("stop")
    default:
        print("xx")
    }
    var area:Zipcode = .西屯區
    print(area.rawValue)
    
    var status1:IOStatus = .OK
    status1 = .NotFound(101,"111")
    var status2:IOStatus = .NotFound(101,"222")
    switch status1 {
    case .NotFound(101, let mesg):
        print("A:\(mesg)")
    case .NotFound(102, _):
        print("B")
    case .OK:
        print("C")
    default:
        print("XX")
        
    }
    
    
}

//定義列舉
enum Direction{
//定義列舉項目
    case UP, DOWN
    case LEFT
    case RIGHT
    case STOP
}

enum Zipcode:String {
    case 南屯區 = "401"
    case 西屯區 = "402"
    case 北屯區 = "403"
    case 中區   = "404"
}

enum IOStatus {
    case OK
    case NotFound(Int, String)
    case IOERROR(Int, String)
    case PermissionDeny
    case UnKnown
}
