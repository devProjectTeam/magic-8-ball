//
//  ViewController.swift
//  DiceApp
//
//  Created by Thomas Miles on 9/22/19.
//  Copyright © 2019 Thomas Miles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    
    @IBOutlet weak var Img1: UIImageView!
    
    
    var RandomNum1: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBall()
        
    }
    
    
    
    func updateBall()
    {
        
        
        RandomNum1 = Int.random(in: 0...4)
        
        Img1.image = UIImage(named: ballArray[RandomNum1])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }


}

