//
//  ViewController.swift
//  JAMM
//
//  Created by Marcus McKinley on 5/5/18.
//  Copyright © 2018 Marcus McKinley. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {
    
    //Postcondition: Makes shadows UIButtons and allows for a highlight when clicked/////////////////
    func make_shadows (x: UIButton) {
        x.layer.shadowColor = UIColor.black.cgColor
        x.layer.shadowOpacity = 0.3
        x.layer.shadowOffset = CGSize(width: 1, height: 5)
        x.showsTouchWhenHighlighted = true
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////

    @IBOutlet weak var menuView: UIView!
    
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
        
        //BUTTON SHADOWS////////////////////////
        make_shadows(x: Equipment_Button)
        make_shadows(x: Weapon_Compare_Button)
        make_shadows(x: Jump_Roulette_Button)
        ////////////////////////////////////////
        
        menuView.layer.shadowOpacity = 1  //Sets opacity on menu shadow
        menuView.layer.shadowRadius = 10  //Increases the size of the menu shadow
    }
    @IBOutlet weak var Equipment_Button: UIButton!
    @IBOutlet weak var Weapon_Compare_Button: UIButton!
    @IBOutlet weak var Jump_Roulette_Button: UIButton!
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var menu_Showing = false
    
    //Postcondition: Menu slides out with a 0.3 second animation////////////////
    @IBAction func MenuButtonPressed(_ sender: Any) {
        if (menu_Showing) {
            leadingConstraint.constant = -301
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        else {
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        menu_Showing = !menu_Showing
    }
    /////////////////////////////////////////////////////////////////////////////
    
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

