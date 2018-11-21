//
//  ViewController.swift
//  DiceApp
//
//  Created by Vakishna Thayalan on 19/11/18.
//  Copyright © 2018 Vakishna Thayalan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    func roll() {
        let randomDiceIndex1 = Int.random(in: 0...5 )
        let randomDiceIndex2 = Int.random(in: 0...5 )
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        roll()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        roll()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        roll()
    }
    
    
}

