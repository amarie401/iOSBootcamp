//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlet allows you to reference a UI element and connects your code to storyboard layouts
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
   
    // IBAction is a way of making storyboard layouts trigger code
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Creating variable for the dice images
        let diceArray = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
       
        // Displaying random dice images for each dice image view
        diceImageView1.image = diceArray[Int.random(in: 0...5)] // can also use .randomElement()
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
    }
}
