//
//  ViewController.swift
//  Dicee
//
//  Created by Jérôme Desseaux on 24/04/2019.
//  Copyright © 2019 Jérôme Desseaux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    let diceImages = ["dice1","dice2","dice3","dice4","dice5","dice6",]
    
    var diceIndex1 : Int = 0
    var diceIndex2 : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        diceIndex1 = Int.random(in: 0...5)
        diceIndex2 = Int.random(in: 0...5)
        
        diceImage1.image = UIImage(named: diceImages[diceIndex1])
        diceImage2.image = UIImage(named: diceImages[diceIndex2])
    }
    
}

