//
//  M16ViewController.swift
//  JAMM
//
//  Created by Marcus McKinley on 5/6/18.
//  Copyright © 2018 Marcus McKinley. All rights reserved.
//

import UIKit

class M16ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    func setupUI() {
        
        // Title Setup //////////////////////////////////////////////////////
        let title = UILabel()
        title.font = UIFont(name: "HelveticaNeue-Bold", size: 20.0)
        title.text = "M16"
        title.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationItem.titleView = title
        self.navigationController?.navigationBar.tintColor = UIColor.white
        /////////////////////////////////////////////////////////////////////
        
        func makelabel(x: String) -> UILabel {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 119, height: 30))
            label.layer.borderWidth = 1.0
            label.layer.borderColor = UIColor.black.cgColor
            label.text = x
            label.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            label.textAlignment = .center
            return label
        }
        
        let tableView: UIView = {
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            view.layer.borderWidth = 1.0
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        view.addSubview(tableView)  // makes tableView visible in the project
        
        let statslabel: UILabel = {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 119, height: 30))
            label.layer.borderWidth = 2.0
            label.layer.borderColor = UIColor.black.cgColor
            label.text = "Stats"
            label.font = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            label.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            label.textAlignment = .center
            return label
        }()
        view.addSubview(statslabel)  // makes the box in table that says Stats
        
        let damagelabel: UILabel = {
            makelabel(x: "Damage")
        }()
        view.addSubview(damagelabel)
        
        let head_shotlabel: UILabel = {
            makelabel(x: "Head Shot")
        }()
        view.addSubview(head_shotlabel)
        
        let fire_ratelabel: UILabel = {
            makelabel(x: "Fire Rate")
        }()
        view.addSubview(fire_ratelabel)
        
        let reloadlabel: UILabel = {
            makelabel(x: "Reload Time")
        }()
        view.addSubview(reloadlabel)
        
        let dpslabel: UILabel = {
            makelabel(x: "DPS")
        }()
        view.addSubview(dpslabel)
        
        let maglabel: UILabel = {
            makelabel(x: "Mag Size")
        }()
        view.addSubview(maglabel)
        
        let commonlabel: UILabel = {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 80, height: 30))
            label.layer.borderWidth = 2.0
            label.layer.borderColor = UIColor.black.cgColor
            label.text = "C"
            label.font = UIFont(name: "HelveticaNeue-Bold", size: 15.0)
            label.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            label.textAlignment = .center
            return label
        }()
        view.addSubview(commonlabel)  // makes the box in table that says Stats
        
        // Postcondition: makes table //////////////////////////////////////////////////////////////////////////////////////////
        func create_table() {
            
            // Sets up tableView Constraints ////////////////////////////////////////////////////////////////////////////
            tableView.translatesAutoresizingMaskIntoConstraints = false
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 377).isActive = true
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
            tableView.widthAnchor.constraint(equalToConstant: 359).isActive = true
            tableView.heightAnchor.constraint(equalToConstant: 210).isActive = true
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            // Sets up statslabel Constraints ////////////////////////////////////////////////////////////////////////////
            statslabel.translatesAutoresizingMaskIntoConstraints = false
            statslabel.leftAnchor.constraint(equalTo: tableView.leftAnchor, constant: 0).isActive = true
            statslabel.topAnchor.constraint(equalTo: tableView.topAnchor, constant: 0).isActive = true
            statslabel.widthAnchor.constraint(equalToConstant: 119).isActive = true
            statslabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            // Postcondition: sets up left column constraints excluding header //////////////////////////////////////////
            func left_column_constraints(current: UILabel, previous: UILabel) {
                current.translatesAutoresizingMaskIntoConstraints = false
                current.leftAnchor.constraint(equalTo: tableView.leftAnchor, constant: 0).isActive = true
                current.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 0).isActive = true
                current.widthAnchor.constraint(equalToConstant: 119).isActive = true
                current.heightAnchor.constraint(equalToConstant: 30).isActive = true
            }
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            left_column_constraints(current: damagelabel, previous: statslabel)
            left_column_constraints(current: head_shotlabel, previous: damagelabel)
            left_column_constraints(current: fire_ratelabel, previous: head_shotlabel)
            left_column_constraints(current: reloadlabel, previous: fire_ratelabel)
            left_column_constraints(current: dpslabel, previous: reloadlabel)
            left_column_constraints(current: maglabel, previous: dpslabel)
            
            // Sets up commonlabel Constraints ////////////////////////////////////////////////////////////////////////////
            commonlabel.translatesAutoresizingMaskIntoConstraints = false
            commonlabel.leftAnchor.constraint(equalTo: statslabel.rightAnchor, constant: 0).isActive = true
            commonlabel.topAnchor.constraint(equalTo: tableView.topAnchor, constant: 0).isActive = true
            commonlabel.widthAnchor.constraint(equalToConstant: 80).isActive = true
            commonlabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            
        }
        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        create_table()
        
        
    }

}


