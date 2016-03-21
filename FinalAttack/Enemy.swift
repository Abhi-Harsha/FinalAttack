//
//  Enemy.swift
//  FinalAttack
//
//  Created by Abhishek H P on 3/17/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import Foundation


class Enemy: Character {
    private var _name : String = "Enemy"
    
    var EnemyName : String {
        get {
            return _name
        }
    }
    
    var type: String {
        return "Grunt"
    }
    
    convenience init (enemyName: String, HP: Int, AttckPower: Int) {
        
        self.init(StartingHP: HP, AttackPower: AttckPower)
        _name = enemyName
    }
}