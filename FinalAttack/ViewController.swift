//
//  ViewController.swift
//  FinalAttack
//
//  Created by Abhishek H P on 3/14/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var enemyHPLbl: UILabel!
    @IBOutlet weak var playerHPLbl: UILabel!
    
    @IBOutlet weak var enemyAttckBtn: UIButton!
    @IBOutlet weak var playerAttckBtn: UIButton!
    
    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var playerImage: UIImageView!
    var HP: [Int] = [100, 120, 150, 200]
    
    var playerHP = 0
    var enemyHP = 0
    
    var player: Player!
    var enemy: Enemy!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        updatePlayerHPLbl()
        updateEnemyHPLbl()
        printLbl.text = "Press attack!"
        
        player = Player(playerName: "ABS", HP: playerHP, AttckPower: 20)
        enemy = Kimara(enemyName: "Dex", HP: enemyHP, AttckPower: 20)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func onEnemyAttackPressed(sender: AnyObject) {
        
        playerAttckBtn.enabled = false
        playerAttckBtn.opaque = true
        
        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "disablePlayerAttckBtn", userInfo: nil, repeats: false)
        
        if player.AttemptAttack() {
        printLbl.text = "\(enemy.EnemyName) attacked with \(enemy.AttackPwr)"
        }
        
        if player.HP > 0 {
        playerHPLbl.text = "\(String(player.HP)) HP"
        } else if player.HP <= 0 {
        playerHPLbl.text = "0 HP"
        }
        
        
        if !player.isAlive {
            playerImage.hidden = true
            printLbl.text = "\(enemy.EnemyName) won the game!!!!!!"
        }
    }
    
    
    @IBAction func onPlayerAttackPressed(sender: AnyObject) {
        
        enemyAttckBtn.enabled = false
        enemyAttckBtn.opaque = true
        
        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "disableEnemyAttckBtn", userInfo: nil, repeats: false)
        
        if enemy.AttemptAttack() {
        printLbl.text = "\(player.PlayerName) attacked with \(player.AttackPwr)"
        }
        
        if enemy.HP > 0 {
        enemyHPLbl.text = "\(String(enemy.HP)) HP"
        } else if enemy.HP <= 0 {
        enemyHPLbl.text = "0 HP"
        }
        
        if !enemy.isAlive {
            enemyImage.hidden = true
            printLbl.text = "\(player.PlayerName) won the game!!!!!"
        }
    }
    
    func generateHP() -> Int? {
        let count = Int(arc4random_uniform(UInt32(HP.count)))
        return HP[count]
    }
    
    func updatePlayerHPLbl() {
        if let playerHP = generateHP() {
            self.playerHP = playerHP
            playerHPLbl.text = "\(String(playerHP)) HP"
        }
        
    }
    
    func updateEnemyHPLbl() {
        if let enemyHP = generateHP() {
            self.enemyHP = enemyHP
            enemyHPLbl.text = "\(String(enemyHP)) HP"
        }

    }
    
    func disablePlayerAttckBtn(){
        playerAttckBtn.enabled = true
        playerAttckBtn.opaque = false
    }
    
    func disableEnemyAttckBtn() {
        enemyAttckBtn.enabled = true
        enemyAttckBtn.opaque = false
    }

}

