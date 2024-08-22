//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Erdem Yavuz on 20.08.2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmi = Float(0)
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = String(format: "%2.f",bmi)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMainController"{
            let destinationVC = segue.destination as! ViewController
            
        }
    }
    
    @IBAction func reCalcButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toMainController", sender: self)
    }
    
}
