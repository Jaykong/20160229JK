
import SpriteKit
import XCPlayground


func createRectange() ->SKShapeNode {
  let rectangleNode = SKShapeNode(rect: CGRect(x: 0, y: 0, width: 500, height: 44))
   rectangleNode.position = CGPoint(x: 0, y: 0)
    rectangleNode.fillColor = UIColor.blueColor()
    rectangleNode.lineWidth = 0
    return rectangleNode
}

func createOciean() -> SKShapeNode {
    let cicleNode = SKShapeNode(circleOfRadius: 88)
    cicleNode.fillColor = UIColor.blueColor()
    cicleNode.position = CGPoint(x: 88, y: 88)
    //let action = SKAction.moveToX(500, duration: 5)
    let action = SKAction.moveByX(500, y: 0, duration: 5)
    let reverse = action.reversedAction()
    let sequence = SKAction.sequence([action,reverse])
    let repeatACtion = SKAction.repeatActionForever(sequence)
    
    cicleNode.runAction(repeatACtion)
    
    
    return cicleNode
}






let scence = SKScene(size: CGSize(width: 500, height: 500))

let skView = SKView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
XCPlaygroundPage.currentPage.liveView = skView

skView.presentScene(scence)



let rectNode = createRectange()
scence.addChild(rectNode)
let cicleNode = createOciean()
scence.addChild(cicleNode)