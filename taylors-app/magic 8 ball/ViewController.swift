//
//  ViewController.swift
//  magic 8 ball
//
//  Created by Taylor Watson on 2019-09-22.
//  Copyright © 2019 Coded By Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // outlets
    @IBOutlet var fortuneLabel: UILabel!
    @IBOutlet var fortuneButton: UIButton!
    
    // inits
    var responses = [String]()
    let waitingPhrase = "Consulting the wizards ..."

    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder()
        
        if let responsesUrl = Bundle.main.url(forResource: "responses", withExtension: "txt") {
            if let allResponses = try? String(contentsOf: responsesUrl) {
                responses = allResponses.components(separatedBy: "\n")
            }
        }
    }
    
    // detects the shake gesture
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        triggerFortune()
    }

    
    // private funcs
    
    func triggerFortune() {
        // tell user we're thinking about our answer.
        fortuneLabel.text = waitingPhrase
        
        // disable the button
        fortuneButton.isEnabled = false
        
        // wait 3 seconds and then show answer
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            // grab random answer
            self.fortuneLabel.text = self.responses.randomElement()
            
            // unhide for testing
            //self.fortuneButton.isEnabled = true
        }
    }
    
    
    // button is hidden. Unhide for testing.
    //@IBAction func buttonFortuneTapped(_ sender: UIButton) {
    //    triggerFortune()
    //}
    
    

}

