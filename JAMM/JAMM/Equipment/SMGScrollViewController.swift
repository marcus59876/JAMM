//
//  SMGScrollViewController.swift
//  JAMM
//
//  Created by Marcus McKinley on 5/6/18.
//  Copyright © 2018 Marcus McKinley. All rights reserved.
//

import UIKit

class SMGScrollViewController: UIViewController {
    
    let impact = UIImpactFeedbackGenerator(style: .heavy)    //Allows for a vibration when button is clicked

    func  setupbuttons(x: UIButton){
        x.layer.borderColor = UIColor.gray.cgColor
        x.layer.borderWidth = 0.2
        x.showsTouchWhenHighlighted = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    func setupUI() {
        let title = UILabel()
        title.font = UIFont(name: "HelveticaNeue-Bold", size: 20.0)
        title.text = "SMGS"
        title.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationItem.titleView = title
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        setupbuttons(x: tactical)
        setupbuttons(x: silence)
    }
    
    @IBAction func tacticalButtonPressed(_ sender: Any) {impact.impactOccurred()}
    @IBAction func silenceButtonPressed(_ sender: Any) {impact.impactOccurred()}
    
    @IBOutlet weak var tactical: UIButton!
    @IBOutlet weak var silence: UIButton!
}
