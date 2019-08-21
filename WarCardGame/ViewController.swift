//
//  ViewController.swift
//  WarCardGame
//
//  Created by Nimish on 21/08/2019.
//  Copyright © 2019 Nimish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Initialized IBOutlets
    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    @IBOutlet weak var RightScoreLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
    }

    var PlayerScore = 0
    var CPUScore = 0
    //Initiatlized the touch button to perform action
    @IBAction func TouchDeal(_ sender: UIButton) {
        print("Touched")
        let no = Int.random(in: 2...14)
        let no2 = Int.random(in: 2...14)
        
        if no>no2 {
            
            PlayerScore+=1
        }
        else if no<no2 {
            
            CPUScore+=1
        }
        else {
            
            //TIE
        }
        
        LeftImageView.image = UIImage(named:"card\(no)")
        RightImageView.image = UIImage(named:"card\(no2)")
        LeftScoreLabel.text = String(PlayerScore)
        RightScoreLabel.text = String(CPUScore)
        print(PlayerScore, CPUScore)
        
        
    }
    
    @IBAction func ResetScore(_ sender: UIButton) {
        
        PlayerScore = 0
        CPUScore = 0
        LeftScoreLabel.text = String(PlayerScore)
        RightScoreLabel.text = String(CPUScore)
        
    }
    
    
}

