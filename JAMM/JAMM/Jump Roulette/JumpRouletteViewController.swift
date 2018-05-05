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
        let title = UILabel()
        title.font = UIFont(name: "HelveticaNeue-Bold", size: 20.0)
        title.text = "Jump Roulette"
        title.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationItem.titleView = title
        self.navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    let impact = UIImpactFeedbackGenerator(style: .medium)    //Allows for a small vibration when button is clicked
    @IBOutlet weak var Map: UIButton!
    @IBAction func MapPressed(_ sender: Any) {
        impact.impactOccurred()
        //Map.pulsate()
        
            /*AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)*/
            
        
    }
    
}
