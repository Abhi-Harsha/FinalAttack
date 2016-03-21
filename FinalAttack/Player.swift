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
    
    override func AttemptAttack() -> Bool {
        if super.AttemptAttack() {
            return true
        } else {
            return false
        }
    }
    
    convenience init (playerName: String, HP: Int, AttckPower: Int) {
        
        self.init(StartingHP: HP, AttackPower: AttckPower)
        _name = playerName
    }
}
