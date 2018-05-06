//
//  SnipersScrollViewController.swift
//  JAMM
//
//  Created by Marcus McKinley on 5/6/18.
//  Copyright © 2018 Marcus McKinley. All rights reserved.
//

import UIKit

class SnipersScrollViewController: UIViewController {
    
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
        title.text = "Snipers"
        title.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationItem.titleView = title
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        setupbuttons(x: bolt)
        setupbuttons(x: semi)
        setupbuttons(x: hunt)
        setupbuttons(x: cross)
    }
    
    @IBAction func boltButtonPressed(_ sender: Any) {impact.impactOccurred()}
    @IBAction func semiButtonPressed(_ sender: Any) {impact.impactOccurred()}
    @IBAction func huntButtonPressed(_ sender: Any) {impact.impactOccurred()}
    @IBAction func crossButtonPressed(_ sender: Any) {impact.impactOccurred()}
    
    @IBOutlet weak var bolt: UIButton!
    @IBOutlet weak var semi: UIButton!
    @IBOutlet weak var hunt: UIButton!
    @IBOutlet weak var cross: UIButton!
}
