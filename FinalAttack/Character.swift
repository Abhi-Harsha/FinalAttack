//
//  Character.swift
//  FinalAttack
//
//  Created by Abhishek H P on 3/15/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    var HP: Int {
        get {
            return _hp
        }
    }
    
    var AttackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    var isAlive: Bool{
        get{
            if HP <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init (StartingHP: Int, AttackPower: Int) {
        _hp = StartingHP
        _attackPwr = AttackPower
    }
    
    func AttemptAttack() -> Bool {
        _hp -= AttackPwr
        
        return true
    }
    
    
}
