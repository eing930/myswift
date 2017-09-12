//
//  MyView.swift
//  MySwiftDrawer
//
//  Created by user20 on 2017/9/11.
//  Copyright © 2017年 Yvonne Big. All rights reserved.
//

import Cocoa

class MyView: NSView {
    
//    var line:[CGPoint] = [] //宣告一個  Array<CGPiont>
    var lines:[[CGPoint]] = [] // 學會畫一條之後再畫多條
    
    
    
    //MyView的呈現畫面
    override func draw(_ dirtyRect: NSRect) {
        
        for line in lines{
        // 一條線
        
        if line.count<2 {continue}
        
        var myPath = NSBezierPath()
        myPath.move(to: line[0])
        for i in 1..<line.count {
            myPath.line(to: line[i])
        }
    
        myPath.stroke()
        }
      
    }
    override func mouseDown(with event: NSEvent) {
        var line:[CGPoint] = []
        let px = event.locationInWindow.x
        let py = event.locationInWindow.y
        line += [CGPoint(x: px,y: py)]
            lines += [line]
    }
   
    override func mouseDragged(with event: NSEvent) {
        let px = event.locationInWindow.x
        let py = event.locationInWindow.y
        
//        line += [CGPoint(x: px,y: py)]
         lines[lines.count-1] += [CGPoint(x: px,y: py)]  //收集點
        
        needsDisplay = true
    }
    
    func clearMe(){
        lines = []
        needsDisplay = true
    }
    func undo(){
        if lines.count > 0 {
            lines.remove(at: lines.count - 1)
        needsDisplay = true
    
        }
    }
    
    func redo(){
        if recycler.count > 0 {
            lines += [recycler.remove(at: recycler.count - 1)]
            needsDisplay = true
        }
    }

}
