//
//  GameSceneViewController.swift
//  CrashCar-Foundation
//
//  Created by Gerson Janhuel on 27/06/24.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        
        if let view = self.view as! SKView? {
            
            if let scene = SKScene(fileNamed: "GameScene") {
                scene.scaleMode = .aspectFill
                
                view.presentScene(scene)
            }
            
           
            
        }
        
    }
    

    override var prefersStatusBarHidden: Bool{
        return true
    }

}
