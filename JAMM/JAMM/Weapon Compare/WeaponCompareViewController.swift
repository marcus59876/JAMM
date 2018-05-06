//
//  WeaponCompareViewController.swift
//  JAMM
//
//  Created by Marcus McKinley on 5/5/18.
//  Copyright © 2018 Marcus McKinley. All rights reserved.
//

import UIKit

class WeaponCompareViewController: UIViewController {
    @IBAction func buttonAction(sender: UIButton!) {
        print("button works")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    func setupUI() {
        
        
        let button: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        button.backgroundColor = UIColor.lightGray
        button.addTarget(self, action: #selector(WeaponCompareViewController.buttonAction) , for: .touchUpInside)
        view.addSubview(button)
        
        let title = UILabel()
        title.font = UIFont(name: "HelveticaNeue-Bold", size: 20.0)
        title.text = "Weapon Compare"
        title.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationItem.titleView = title
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 76).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalTo: )
        
        
        
        
    
        
    }

}
