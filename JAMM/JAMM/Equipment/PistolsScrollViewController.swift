//
//  PistolsScrollViewController.swift
//  JAMM
//
//  Created by Marcus McKinley on 5/6/18.
//  Copyright © 2018 Marcus McKinley. All rights reserved.
//

import UIKit

class PistolsScrollViewController: UIViewController {
    
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
        title.text = "Pistols"
        title.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationItem.titleView = title
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        setupbuttons(x: basic)
        setupbuttons(x: hand)
        setupbuttons(x: revolve)
        setupbuttons(x: silence)
    }
    
    @IBAction func basicButtonPressed(_ sender: Any) {impact.impactOccurred()}
    @IBAction func handButtonPressed(_ sender: Any) {impact.impactOccurred()}
    @IBAction func revolveButtonPressed(_ sender: Any) {impact.impactOccurred()}
    @IBAction func silenceButtonPressed(_ sender: Any) {impact.impactOccurred()}
    
    @IBOutlet weak var basic: UIButton!
    @IBOutlet weak var hand: UIButton!
    @IBOutlet weak var revolve: UIButton!
    @IBOutlet weak var silence: UIButton!
}
