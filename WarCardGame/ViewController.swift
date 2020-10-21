//
//  ViewController.swift
//  WarCardGame
//
//  Created by Usama Eltmsah on 10/20/20.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftNum = Int.random(in: 2...14)
        let rightNum = Int.random(in: 2...14)

        leftImageView.image = UIImage(named: "card\(leftNum)")
        
        rightImageView.image = UIImage(named: "card\(rightNum)")
        
        
        if leftNum > rightNum {
            // Left Side wins
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
        }
        else if rightNum > leftNum {
            // Right Side wins
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
        }
        else {
            // Tie
        }
    }
    
}

