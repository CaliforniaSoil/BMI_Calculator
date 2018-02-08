//
//  ViewController.swift
//  BodyMassIndex
//
//  Created by Jason Lee on 2/7/18.
//  Copyright © 2018 Jason Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BMI: UILabel!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calculateBMI(weight: Double, height: Double) {
        
        let bmi = weight / pow(height, 2)
        
        let shortenedBMI = String(format: "%.2f", bmi)
        
        if bmi > 25 {
            BMI.text = ("Your bmi is \(shortenedBMI) You are over weight.")
        } else if bmi > 18.5 {
            BMI.text = ("Your bmi is \(shortenedBMI) You are normal weight.")
        } else {
            BMI.text = ("Your bmi is \(shortenedBMI) You are under weight.")
        }
        print(BMI.text)
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let w: Double = Double(weight.text!)!
        let h: Double = Double(height.text!)!
        calculateBMI(weight: w, height: h)
    }
    
}

