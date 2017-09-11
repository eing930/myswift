//
//  ViewController.swift
//  MySwiftDrawer
//
//  Created by user20 on 2017/9/11.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        let myview = MyView(frame: frame)
       view.addSubview(myview)
        
        
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

