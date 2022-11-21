//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Zeki Gökler on 21.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textLabel1: UITextField!
    @IBOutlet var textLabel2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sumFunction(_ sender: Any) {
        if let firstNumber = Int(textLabel1.text!) {
            if let secondNumber = Int(textLabel2.text!){
                result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func minusFunction(_ sender: Any) {
        if let firstNumber = Int(textLabel1.text!) {
            if let secondNumber = Int(textLabel2.text!){
                result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func multiplyFunction(_ sender: Any) {
        if let firstNumber = Int(textLabel1.text!) {
            if let secondNumber = Int(textLabel2.text!){
                result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func divideFunction(_ sender: Any) {
        if let firstNumber = Int(textLabel1.text!) {
            if let secondNumber = Int(textLabel2.text!){
                result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    
}

