//
//  ViewController.swift
//  Dice Roll
//
//  Created by Enes Başpınar on 26.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    var diceImages: [UIImage]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImages = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        [diceImageView1, diceImageView2].map { view in
            view.image = diceImages.randomElement()
        }
    }
}

