//
//  WeaponClass.swift
//  JAMM
//
//  Created by Marcus McKinley on 5/6/18.
//  Copyright © 2018 Marcus McKinley. All rights reserved.
//

import Foundation
import UIKit

class Weapon {
    
    // Constructors ///////////////////////////////////////////////////////////////////////////////////////////////////////
    func Weapon() {
        damage = [0.0]
        headshot_damage = [0.0]
        fire_rate = [0.0]
        reload_time = [0.0]
        mag_size = [0]
        color = [UIColor(red: 0, green: 0, blue: 0, alpha: 1)]
        name = "ADD GUN"
    
    }
    
    func Weapon(weapon_name: String, Damage: Double, head: Double, fire: Double, reload: Double, mag: Int, weapon_color: UIColor) {
        name = weapon_name
        damage.append(Damage)
        headshot_damage.append(head)
        fire_rate.append(fire)
        reload_time.append(reload)
        mag_size.append(mag)
        color.append(weapon_color)
        
    }
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    // Accessor Functions //////////////////////////////////////////////////////////////
    func get_damage(rarity: Int) -> Double {return damage[rarity]}
    func get_headshot_damage(rarity: Int) -> Double {return headshot_damage[rarity]}
    func get_fire_rate(rarity: Int) -> Double {return fire_rate[rarity]}
    func get_reload_time(rarity: Int) -> Double {return reload_time[rarity]}
    func get_mag_size(rarity: Int) -> Int {return mag_size[rarity]}
    func get_color(rarity: Int) -> UIColor {return color[rarity]}
    func get_dps(rarity: Int) -> Double {return damage[rarity] * fire_rate[rarity]}
    func get_name(rarity: Int) -> String {return name}
    ////////////////////////////////////////////////////////////////////////////////////
    
    // Member Variables ////////////////////////////////////////////////////////////////
    private var name = "ADD GUN"
    private var damage = [Double]()
    private var headshot_damage = [Double]()
    private var fire_rate = [Double]()
    private var reload_time = [Double]()
    private var mag_size = [Int]()
    private var color = [UIColor]()
    ////////////////////////////////////////////////////////////////////////////////////
    
    func addrarity(Damage: Double, head: Double, fire: Double, reload: Double, mag: Int, weapon_color: UIColor) {
        damage.append(Damage)
        headshot_damage.append(head)
        fire_rate.append(fire)
        reload_time.append(reload)
        mag_size.append(mag)
        color.append(weapon_color)
    }
    
    func num_rarities() ->Int {return color.count}
    
}
