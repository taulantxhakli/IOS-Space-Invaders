//
//  GameViewController.swift
//  Space Invaders
//
//  Created by Taulant Xhakli on 3/15/20.
//  Copyright © 2020 Taulant Xhakli. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation

class GameViewController: UIViewController {
    
    var blazerRail = AVAudioPlayer() // music variable instantiation

     override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK:- Music
        let filePath = Bundle.main.path(forResource: "Blazer Rail", ofType: "wav")
        let audioNSURL = NSURL(fileURLWithPath: filePath!)
        do { blazerRail = try AVAudioPlayer(contentsOf: audioNSURL as URL) }
        catch { return print ("Cannot find audio. ") }
        
        blazerRail.numberOfLoops = -1
        blazerRail.play()
            
        
        //MARK:- Rest of gameView
            if let view = self.view as! SKView? {

                // Load the SKScene from 'GameScene.sks'
                // iphone 11
                let scene = MainMenuScene(size: CGSize(width: 828, height: 1792))

                    // Set the scale mode to scale to fit the window

                    scene.scaleMode = .aspectFill
                    
                    // Present the scene

                    view.presentScene(scene)
                
                view.ignoresSiblingOrder = true
                
                view.showsFPS = false

                view.showsNodeCount = false
            }

        }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
