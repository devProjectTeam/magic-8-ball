//
//  ViewController.swift
//  8Ball
//
//  Created by Shivashankar on 9/21/19.
//  Copyright © 2019 skyenov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var responseDisplay: UILabel!
    
    var responseValues = ["It is certain","It is decidedly so","Without a doubt","Yes - definitely","You may rely on it","Very doubtful","Don't count on it","My reply is no","My sources say no","Ask again later","Cannot predict now","Ask again later"," Most likely","Yes"]
    

    var randomNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        randomNum = Int(arc4random_uniform(UInt32(responseValues.count)))
        responseDisplay.text = "\(responseValues[randomNum])"
    }

    @IBAction func playButtonTapped(_ sender: Any) {
        randomNum = Int(arc4random_uniform(UInt32(responseValues.count)))
        responseDisplay.text = "\(responseValues[randomNum])"
    }
    
}

