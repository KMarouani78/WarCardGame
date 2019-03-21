//
//  ViewController.swift
//  WarCardGame
//
//  Created by Khaled Marouani on 3/21/19.
//  Copyright © 2019 Khaled Marouani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var playerCard: UIImageView!
    @IBOutlet weak var cpuCard: UIImageView!
   // @IBOutlet weak var playerScoreLabel: UILabel!
    
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var playerScore = 0
    var cpuScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        // This gives us numbers from 0 to 12, then we add 2
        
     let playerNumber =    arc4random_uniform(13) + 2
     let cpuNumber = arc4random_uniform(13) + 2
        
        // Set the image views 
        playerCard.image = UIImage(named: "card" + String(playerNumber) )
        cpuCard.image = UIImage(named: "card" + String(cpuNumber))
        // Update the score
        if playerNumber > cpuNumber {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        } else if cpuNumber > playerNumber {
            cpuScore += 1
            cpuScoreLabel.text = String(cpuScore)
        }
    }
}

