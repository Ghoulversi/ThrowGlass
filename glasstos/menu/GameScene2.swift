//
//  GameScene.swift
//  menu
//
//  Created by Pikachu on 09.08.17.
//  Copyright © 2017 Pikachu. All rights reserved.
//

import SpriteKit
import GameplayKit
import AVFoundation
import UIKit

class GameScene2: SKScene, SKPhysicsContactDelegate {
   
   var back = SKSpriteNode(imageNamed: "back")
    var egg: SKLabelNode?
    var chicken: SKLabelNode?
    var cat: SKLabelNode?
    var hotdog: SKLabelNode?
    
    override func didMove(to view: SKView) {
        back.position = CGPoint(x: -241, y: 542.228)
        back.zPosition = 1
        back.run(SKAction.scale(by: 0.10, duration: 0))
        addChild(back)
        
        self.egg = self.childNode(withName: "//egg") as? SKLabelNode
        
        self.chicken = self.childNode(withName: "//chicken") as? SKLabelNode
        
        self.cat = self.childNode(withName: "//cat") as? SKLabelNode
        
        self.hotdog = self.childNode(withName: "//hotdog") as? SKLabelNode
        
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for touch in touches
        {
            let location = touch.location(in: self)
             let firstScene = GameScene(fileNamed: "GameScene")
            
            // ---------------
            if (back.contains(location))
            {
                view?.presentScene(firstScene!, transition: SKTransition.fade(withDuration: 0.5))
            }
            
            if ((egg?.contains(location))! && Score >= 2)
            {
                pBall = SKSpriteNode(imageNamed: "baklajan2")
                flysound = ["egg"]
                brGlass = SKSpriteNode(imageNamed: "seggplant")
                GameScene().kek()
                view?.presentScene(firstScene!, transition: SKTransition.fade(withDuration: 0.5))
            }

            // -----------------
            
            if ((chicken?.contains(location))! && Score >= 10)
            {
                pBall = SKSpriteNode(imageNamed: "throw")
                brGlass = SKSpriteNode(imageNamed: "splashduck")
                flysound = ["duck"]
                GameScene().minusd()
                 view?.presentScene(firstScene!, transition: SKTransition.fade(withDuration: 0.5))
                
            }
            
            // -----------------
            
            if (cat?.contains(location))!
            {
                pBall = SKSpriteNode(imageNamed: "cat1")
                brGlass = SKSpriteNode(imageNamed: "catsplash")
                flysound = ["vkcat"]
                GameScene().minusc()
                view?.presentScene(firstScene!, transition: SKTransition.fade(withDuration: 0.5))
            }
            
            // -----------------
            
            if (hotdog?.contains(location))!
            {
                pBall = SKSpriteNode(imageNamed: "9922")
                 brGlass = SKSpriteNode(imageNamed: "splashdog")
                flysound = ["Wiiii"]
                GameScene().minush()
                view?.presentScene(firstScene!, transition: SKTransition.fade(withDuration: 0.5))
            }
        }
    }
}
           
            
            
    

