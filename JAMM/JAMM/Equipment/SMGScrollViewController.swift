//
//  SMGScrollViewController.swift
//  JAMM
//
//  Created by Marcus McKinley on 5/6/18.
//  Copyright © 2018 Marcus McKinley. All rights reserved.
//

import UIKit

class SMGScrollViewController: UIViewController {

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
    }
}
