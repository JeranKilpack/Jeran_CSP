//
//  DrawingView.swift
//  Jeran_CSP
//
//  Created by Kilpack, Jeran on 12/5/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override public func draw(_ rect: CGRect)
    {
        // Drawing code
        drawStickFigure().stroke()
        drawingWithSophty().stroke()
        drawHappyTree()
    }
    
    private func drawStickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
        
        UIColor.magenta.setStroke()
        stickFigure.lineWidth = 3.0
        
        stickFigure.addArc(withCenter: CGPoint(x: 200, y: 200),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle: CGFloat(2) * CGFloat.pi,
                           clockwise: true)
        stickFigure.move(to: CGPoint(x: 200, y: 220))
        stickFigure.addLine(to: CGPoint(x: 200, y: 270))
        stickFigure.move(to: CGPoint(x: 180, y: 240))
        stickFigure.addLine(to: CGPoint(x: 220, y: 240))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 180, y: 300))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 220, y: 300))
        
        return stickFigure
    }
    
    public func drawHappyTree() -> Void
    {
        let bobRoss = UIBezierPath()
        
        bobRoss.move(to: CGPoint(x:80, y:50))
        bobRoss.addLine(to: CGPoint(x:120, y:150))
        bobRoss.addLine(to: CGPoint(x:40, y:150))
        bobRoss.close()
        UIColor(patternImage: UIImage(named: "mpengu")!).setFill()
        UIColor.brown.setStroke()
        bobRoss.lineWidth = 2.0
        bobRoss.fill()
        bobRoss.stroke()
        
        let happyTree = UIBezierPath()
        
        UIColor.green.setFill()
        happyTree.move(to: CGPoint(x: 110, y: 150))
        happyTree.addLine(to: CGPoint(x: 150, y: 200))
        happyTree.addLine(to: CGPoint(x: 10, y: 200))
        happyTree.addLine(to: CGPoint(x:50, y: 150))
        happyTree.close()
        happyTree.stroke()
        happyTree.fill()
        happyTree.move(to: CGPoint(x: 80, y: 200))
        happyTree.addLine(to: CGPoint(x: 80, y: 250))
        happyTree.lineWidth = 6.0
        happyTree.stroke()
    }
    
    public func drawingWithSophty() -> UIBezierPath
    {
        let ez = UIBezierPath()
        
        UIColor.black.setStroke()
        ez.lineWidth = 3.0
        
        ez.move(to: CGPoint(x:150, y: 150))
        ez.addLine(to: CGPoint(x: 200, y: 200))
        ez.move(to: CGPoint(x: 300, y: 300))
        ez.addLine(to: CGPoint(x: 400, y: 400))
        
        
       
        return ez
        
    }
        
        
        
}
