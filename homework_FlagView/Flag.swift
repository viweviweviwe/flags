//
//  Flag.swift
//  homework_FlagView
//
//  Created by Филипп Бочаров on 4/29/19.
//  Copyright © 2019 Филипп Бочаров. All rights reserved.
//

import UIKit

@IBDesignable

class Flag: UIView {

    
    var height: CGFloat {
        
        
        return min(self.bounds.size.width,
                   self.bounds.size.height)
        
    }
    
    var width : CGFloat {
        
        return max(self.bounds.size.width,
                   self.bounds.size.height)
        
    }
    
    private var firstFlagElement: CGRect {
        
        return CGRect(x: bounds.midX - height / 3,
                      y: bounds.midY / 6,
                      width: height / 1.5,
                      height: width / 10)
    }
    
    
    private var secondFlagElement: CGRect {
        
        return CGRect(x: firstFlagElement.minX,
                      y: firstFlagElement.maxY,
                      width: firstFlagElement.width,
                      height: firstFlagElement.height)
    }
    
    private var threeFlagElement: CGRect {
        
        return CGRect(x: secondFlagElement.minX,
                      y: secondFlagElement.maxY,
                      width: firstFlagElement.width,
                      height: firstFlagElement.height)
    }
    
    private func pathFirstElement() -> UIBezierPath {
        
        let firstPath = UIBezierPath(rect: firstFlagElement)
        
        return firstPath
        
    }
    

    private func pathSecondElement() -> UIBezierPath {
        
        let secondPath = UIBezierPath(rect: secondFlagElement)
        
        return secondPath
    }
    
    private func pathThreeElement() -> UIBezierPath {
        
        let threePath = UIBezierPath(rect: threeFlagElement)
        
        return threePath
    }
    

    override func draw(_ rect: CGRect) {
        
        
        
       UIColor.green.setStroke()
        pathFirstElement().stroke()
        UIColor.yellow.setFill()
        pathSecondElement().fill()
        UIColor.black.setFill()
        pathThreeElement().fill()
        // Drawing code
    }
    

}
