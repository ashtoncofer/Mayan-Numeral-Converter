//
//  AnswerViewController.swift
//  Mayan Number Converter
//
//  Created by Ashton Cofer on 8/22/19.
//  Copyright © 2019 Ashton Cofer. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBOutlet weak var sixPlace: UIImageView!
    @IBOutlet weak var fivePlace: UIImageView!
    @IBOutlet weak var fourPlace: UIImageView!
    @IBOutlet weak var threePlace: UIImageView!
    @IBOutlet weak var twoPlace: UIImageView!
    @IBOutlet weak var onePlace: UIImageView!
    @IBOutlet weak var zeroPlace: UIImageView!
    
    
    var enteredNumber = Int()
    var hasStarted = false

    override func viewDidLoad() {
        super.viewDidLoad()
        if (enteredNumber >= 64000000) {
            sixPlace.image = UIImage(named: "\(enteredNumber / 64000000)")
            enteredNumber = enteredNumber % 64000000
            hasStarted = true
        }
        if (enteredNumber >= 3200000 || hasStarted == true) {
            fivePlace.image = UIImage(named: "\(enteredNumber / 3200000)")
            enteredNumber = enteredNumber % 3200000
            hasStarted = true
        }
        if (enteredNumber >= 160000 || hasStarted == true) {
            fourPlace.image = UIImage(named: "\(enteredNumber / 160000)")
            enteredNumber = enteredNumber % 160000
            hasStarted = true
        }
        if (enteredNumber >= 8000 || hasStarted == true) {
            threePlace.image = UIImage(named: "\(enteredNumber / 8000)")
            enteredNumber = enteredNumber % 8000
            hasStarted = true
        }
        if (enteredNumber >= 400 || hasStarted == true) {
            twoPlace.image = UIImage(named: "\(enteredNumber / 400)")
            enteredNumber = enteredNumber % 400
            hasStarted = true
        }
        if (enteredNumber >= 20 || hasStarted == true) {
            onePlace.image = UIImage(named: "\(enteredNumber / 20)")
            enteredNumber = enteredNumber % 20
            hasStarted = true
        }
        zeroPlace.image = UIImage(named: "\(enteredNumber)")
        

    }
    
}
