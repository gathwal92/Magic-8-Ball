//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Gurpreet Athwal on 9/19/17.
//  Copyright © 2017 Gurpreet Athwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var magicBallImage1: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        askMagicBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButton(_ sender: Any) {
        askMagicBall()
    }
    
    func askMagicBall() {
        randomBallNumber = Int(arc4random_uniform(5))
        magicBallImage1.image = UIImage(named:ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        askMagicBall()
    }
}

