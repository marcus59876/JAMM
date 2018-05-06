//
//  AssaultRiflesScrollViewController.swift
//  JAMM
//
//  Created by Marcus McKinley on 5/5/18.
//  Copyright © 2018 Marcus McKinley. All rights reserved.
//

import UIKit

class AssaultRiflesScrollViewController: UIViewController {
    
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
        title.text = "Assault Rifles"
        title.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationItem.titleView = title
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        setupbuttons(x: M16)
        setupbuttons(x: Burst)
        setupbuttons(x: Scoped)
        setupbuttons(x: Scar)
    }
    
    @IBAction func M16ButtonPressed(_ sender: Any) {impact.impactOccurred()}
    @IBAction func BurstButtonPressed(_ sender: Any) {impact.impactOccurred()}
    @IBAction func ScopedButtonPressed(_ sender: Any) {impact.impactOccurred()}
    @IBAction func ScarButtonPressed(_ sender: Any) {impact.impactOccurred()}
    
    @IBOutlet weak var M16: UIButton!
    @IBOutlet weak var Burst: UIButton!
    @IBOutlet weak var Scoped: UIButton!
    @IBOutlet weak var Scar: UIButton!
}
