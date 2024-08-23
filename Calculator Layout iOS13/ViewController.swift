//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019,
//  Modify by João Victor Fernandes (Quindinzao) on 08/23/2024
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ViewOperation: UILabel!
    var number_1 = ""
    var number_2 = ""
    var operator_value = ""
    var result_value = ""
    
    @IBAction func Number0(_ sender: UIButton) {
        ApplyNumber(numberToAdd: "0")
    }

    @IBAction func Number1(_ sender: UIButton) {
        ApplyNumber(numberToAdd: "1")
    }
    
    @IBAction func Number2(_ sender: UIButton) {
        ApplyNumber(numberToAdd: "2")
    }
    
    @IBAction func Number3(_ sender: UIButton) {
        ApplyNumber(numberToAdd: "3")
    }
    
    @IBAction func Number4(_ sender: UIButton) {
        ApplyNumber(numberToAdd: "4")
    }
    
    @IBAction func Number5(_ sender: UIButton) {
        ApplyNumber(numberToAdd: "5")
    }
    
    @IBAction func Number6(_ sender: UIButton) {
        ApplyNumber(numberToAdd: "6")
    }
    
    @IBAction func Number7(_ sender: UIButton) {
        ApplyNumber(numberToAdd: "7")
    }
    
    @IBAction func Number8(_ sender: UIButton) {
        ApplyNumber(numberToAdd: "8")
    }
    
    @IBAction func Number9(_ sender: UIButton) {
        ApplyNumber(numberToAdd: "9")
    }
    
    @IBAction func Dot(_ sender: UIButton) {
        ApplyNumber(numberToAdd: ".")
    }
    
    @IBAction func Division(_ sender: UIButton) {
        operator_value = "/"
    }
    
    @IBAction func Multiplication(_ sender: UIButton) {
        operator_value = "*"
    }
    
    @IBAction func Subtraction(_ sender: UIButton) {
        operator_value = "-"
    }
    
    @IBAction func Addition(_ sender: UIButton) {
        operator_value = "+"
    }
    
    @IBAction func EqualTo(_ sender: UIButton) {
        switch operator_value {
        case "/":
            result_value = String(Double(number_1)! / Double(number_2)!)
        case "*":
            result_value = String(Double(number_1)! * Double(number_2)!)
        case "-":
            result_value = String(Double(number_1)! - Double(number_2)!)
        case "+":
            result_value = String(Double(number_1)! + Double(number_2)!)
        default:
            result_value = "Error"
        }
        
        ViewOperation.text = result_value
        number_1 = ""
        number_2 = ""
        operator_value = ""
        result_value = ""
    }
    
    @IBAction func ClearAll(_ sender: UIButton) {
        number_1 = ""
        number_2 = ""
        operator_value = ""
        result_value = ""
        ViewOperation.text = "0"
    }

    func ApplyNumber(numberToAdd: String) {
        result_value = ""
        if (operator_value == "") {
            number_1 = number_1 + numberToAdd
            ViewOperation.text = number_1
        } else {
            number_2 = number_2 + numberToAdd
            ViewOperation.text = number_2
        }
    }

}

