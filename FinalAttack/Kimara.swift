//
//  Kimara.swift
//  FinalAttack
//
//  Created by Abhishek H P on 3/21/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import Foundation


class Kimara: Enemy {
    
    override func AttemptAttack() -> Bool {
        if super.AttemptAttack() {
            return true
        } else {
            return false
        }
    }
    
    override var type: String{
        return "Kimara"
    }
    
}