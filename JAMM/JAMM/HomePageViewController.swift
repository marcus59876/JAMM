//
//  ViewController.swift
//  JAMM
//
//  Created by Marcus McKinley on 5/5/18.
//  Copyright © 2018 Marcus McKinley. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        let title = UILabel()
        title.font = UIFont(name: "HelveticaNeue-Bold", size: 20.0)
        title.text = "Fortnite Guide"
        title.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationItem.titleView = title
        
        menuView.layer.shadowOpacity = 1  //Sets opacity on menu shadow
        menuView.layer.shadowRadius = 10  //Increases the size of the menu shadow
    }
    
    @IBOutlet weak var menuView: UIView!
    
    @IBAction func EquipmentButtonPressed(_ sender: Any) {
        print("Equiment")
    }
    @IBAction func WeaponCompareButtonPressed(_ sender: Any) {
        print("Weapon")
    }
    @IBAction func JumpRouletteButtonPressed(_ sender: Any) {
        print("Jump")
    }
    
}

