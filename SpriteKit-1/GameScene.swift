//
//  GameScene.swift
//  SpriteKit-1
//
//  Created by martynov on 2018-03-16.
//  Copyright © 2018 martynov. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
  
    override func didMove(to view: SKView) {
        
        // Adding ship from a Assets folder (png image)
        let ship: SKSpriteNode = SKSpriteNode(imageNamed: "spaceship")
        ship.xScale = 0.25
        ship.yScale = 0.25
        self.addChild(ship)
        
        // Modifing ship that's in the Scene already
        // gettin access to it and scaling
        let shipInScene: SKSpriteNode = self.childNode(withName: "shipInScene") as! SKSpriteNode
        
        shipInScene.xScale = 0.1
        shipInScene.yScale = 0.1
        
        
    
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
      
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
     
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
     
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
