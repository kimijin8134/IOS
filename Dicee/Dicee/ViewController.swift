//
//  ViewController.swift
//  Dicee
//
//  Created by Wei Jin on 2017-08-19.
//  Copyright © 2017 Wei Jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        randomDices()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomDices()
    }
    
    func randomDices(){
        randomDiceIndex1 = Int (arc4random_uniform(6)) + 1
        randomDiceIndex2 = Int (arc4random_uniform(6)) + 1
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomDices()

    }
    
}

