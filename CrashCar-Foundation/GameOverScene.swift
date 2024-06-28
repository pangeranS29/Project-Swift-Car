//
//  GameOverScene.swift
//  CrashCar-Foundation
//
//  Created by Foundation-021 on 28/06/24.
//

import SpriteKit
import UIKit


class GameOverScene: SKScene{
    
    var gameOverLabel : SKLabelNode?
    var restartLabel :SKLabelNode?
    
    override func didMove(to view: SKView) {
        
        restartLabel = self.childNode(withName:"//restartLabel") as? SKLabelNode
        
        view.backgroundColor = .blue
        
        
        gameOverLabel   = SKLabelNode(text: "GAME OVER")
        gameOverLabel?.fontSize = 50
        gameOverLabel?.position = .zero
        
        addChild(gameOverLabel!)
         
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //check which node it touched
        
        guard let touch = touches.first else{return}
        let location = touch.location(in:self)
        
        if self.atPoint(location) == restartLabel{
            restartGame()
        }
    }
    
    func restartGame(){
        if let scene = SKScene(fileNamed:"GameScene"){
            scene.scaleMode = .aspectFill
            
            let transition = SKTransition.doorsCloseHorizontal(withDuration: 1)
            view?.presentScene(scene, transition:transition)
        }
    }
    
}
