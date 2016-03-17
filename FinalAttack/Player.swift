//
//  Player.swift
//  FinalAttack
//
//  Created by Abhishek H P on 3/16/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import Foundation

class Player : Character {
    private var _name: String = "Player"
    
    var PlayerName: String {
        get {
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var Inventory: [String] {
        get {
            return _inventory
        }
    }
    
    convenience init (playerName: String, HP: Int, AttckPower: Int) {
        
        self.init(StartingHP: HP, AttackPower: AttckPower)
        _name = playerName
    }
}
