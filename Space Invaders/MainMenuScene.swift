//
//  MainMenuScene.swift
//  Space Invaders
//
//  Created by Taulant Xhakli on 4/7/20.
//  Copyright © 2020 Taulant Xhakli. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        let nameLabel = SKLabelNode(fontNamed: "The Bold Font")
        nameLabel.text = "Taulant Xhakli's"
        nameLabel.fontSize = 30
        nameLabel.fontColor = SKColor.white
        nameLabel.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.78)
        nameLabel.zPosition = 1
        self.addChild(nameLabel)
        
        let spaceLabel = SKLabelNode(fontNamed: "The Bold Font")
        spaceLabel.text = "Space"
        spaceLabel.fontSize = 140
        spaceLabel.fontColor = SKColor.white
        spaceLabel.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.7)
        spaceLabel.zPosition = 1
        self.addChild(spaceLabel)
        
        let invadersLabel = SKLabelNode(fontNamed: "The Bold Font")
        invadersLabel.text = "Invaders"
        invadersLabel.fontSize = 140
        invadersLabel.fontColor = SKColor.white
        invadersLabel.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.63)
        invadersLabel.zPosition = 1
        self.addChild(invadersLabel)
        
        let startGame = SKLabelNode(fontNamed: "The Bold Font")
        startGame.text = "Start Game"
        startGame.fontSize = 90
        startGame.fontColor = SKColor.white
        startGame.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.4)
        startGame.zPosition = 1
        startGame.name = "startButton"
        self.addChild(startGame)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches {
            let pointOfTouch = touch.location(in: self)
            let nodeTapped = atPoint(pointOfTouch)
            if nodeTapped.name == "startButton" {
                let sceneToMove = GameScene(size: self.size)
                sceneToMove.scaleMode = self.scaleMode
                let theTransition = SKTransition.fade(withDuration: 0.5)
                self.view!.presentScene(sceneToMove, transition: theTransition)
            }
        }
    }
}
