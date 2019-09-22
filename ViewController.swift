//
//  ViewController.swift
//  eightBall
//
//  Created by Rob on 9/20/19.
//  Copyright © 2019 Rob. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.becomeFirstResponder()
        
        }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            
            let randomInt = Int.random(in: 1...20)
            print(randomInt)
            let sound = Bundle.main.path(forResource: String(randomInt), ofType: "mp3")
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: AVAudioSession.Mode.default, options: [AVAudioSession.CategoryOptions.mixWithOthers])
                
            } catch {
                print(error)
            }
            
            audioPlayer.play()
    }

}
}

