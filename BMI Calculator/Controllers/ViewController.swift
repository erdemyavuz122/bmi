//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toResultVC", sender: self)
    }
    @IBAction func hSliderAction(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f",sender.value) + "m"
    }
    
    @IBAction func wSliderAction(_ sender: UISlider) {
        weightLabel.text = String(format: "%1.f",sender.value) + "kg"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultVC"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = calcBMI()
        }
    }
    func calcBMI() -> Float{
       return (weightSlider.value / (heightSlider.value * heightSlider.value))
    }
}

