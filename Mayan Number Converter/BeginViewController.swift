//
//  ViewController.swift
//  Mayan Number Converter
//
//  Created by Ashton Cofer on 8/22/19.
//  Copyright © 2019 Ashton Cofer. All rights reserved.
//

import UIKit

class BeginViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    @IBAction func enterButton(_ sender: UIButton) {
        if (textField.text != "" && integer(from: textField) < 1280000000 && integer(from: textField) > -1) {
        performSegue(withIdentifier: "enterButton", sender: self)
        } else {
            showAlert(title: "Invalid Number", message: "Enter a positive integer less than 1,280,000,000")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let AnswerVC = segue.destination as! AnswerViewController
        AnswerVC.enteredNumber = integer(from: textField)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        enterButton.layer.cornerRadius = 10
    }
    
    override func viewDidAppear(_ animated: Bool) {
        textField.text = ""
    }
    
    func integer(from textField: UITextField) -> Int {
        guard let text = textField.text, let number = Int(text) else {
            //not an integer
            return -1;
        }
        return number
    }
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message:
            message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: .default))
        
        self.present(alertController, animated: true, completion: nil)
    }


}

