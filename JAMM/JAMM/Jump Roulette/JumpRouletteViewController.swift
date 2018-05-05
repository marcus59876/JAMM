//
//  JumpRouletteViewController.swift
//  JAMM
//
//  Created by Marcus McKinley on 5/5/18.
//  Copyright © 2018 Marcus McKinley. All rights reserved.
//

import UIKit
import AudioToolbox

class JumpRouletteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    func setupUI() {
        
    }
    
    let impact = UIImpactFeedbackGenerator(style: .medium)    //Allows for a small vibration when button is clicked
    @IBAction func MapPressed(_ sender: Any) {
        impact.impactOccurred()
            /*AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)*/
            
        
    }
    
}
