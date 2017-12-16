//
//  ViewController.swift
//  Xylophone
//
//  Created by Luis M Gonzalez on 12/14/17.
//  Copyright © 2017 Luis M Gonzalez. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        if let soundURL = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound)
        }
        
        
    }
    
}

