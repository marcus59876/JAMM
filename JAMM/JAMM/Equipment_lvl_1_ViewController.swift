//
//  Equipment_lvl_1_ViewController.swift
//  JAMM
//
//  Created by Marcus McKinley on 5/5/18.
//  Copyright © 2018 Marcus McKinley. All rights reserved.
//

import UIKit

class Equipment_lvl_1_ViewController: UIViewController {
    
    //Postcondition: Makes shadows UIButtons and allows for a highlight when clicked/////////////////
    func make_shadows (x: UIButton) {
        x.layer.shadowColor = UIColor.black.cgColor
        x.layer.shadowOpacity = 0.3
        x.layer.shadowOffset = CGSize(width: 1, height: 5)
        x.showsTouchWhenHighlighted = true
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////


    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

    }
    
    //Postcondition: Sets up user interface///////////////////////////////////////////////////////////
    func setupUI() {
        let title = UILabel()
        title.font = UIFont(name: "HelveticaNeue-Bold", size: 20.0)
        title.text = "Equipment"
        title.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationItem.titleView = title
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        make_shadows(x: AssaultRifleButton)
        make_shadows(x: ShotgunButton)
        make_shadows(x: SniperButton)
        make_shadows(x: SmgButton)
        make_shadows(x: MachineGunButton)
        make_shadows(x: PistolButton)
        make_shadows(x: ExplosiveButton) 
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////
    @IBOutlet weak var AssaultRifleButton: UIButton!
    @IBOutlet weak var ShotgunButton: UIButton!
    @IBOutlet weak var SniperButton: UIButton!
    @IBOutlet weak var SmgButton: UIButton!
    @IBOutlet weak var MachineGunButton: UIButton!
    @IBOutlet weak var PistolButton: UIButton!
    @IBOutlet weak var ExplosiveButton: UIButton!
    
}
