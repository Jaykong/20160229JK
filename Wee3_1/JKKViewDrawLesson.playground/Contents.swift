//: Playground - noun: a place where people can play

import UIKit

class JKView: UIView {
    override func drawRect(rect: CGRect) {
        let path = UIBezierPath(ovalInRect:  rect)
        UIColor.redColor().setFill()
        path.fill()
    }
}
let jkView = JKView(frame: CGRect(x: 0, y: 0, width: 500, height: 400))
jkView.backgroundColor = UIColor.blueColor()









