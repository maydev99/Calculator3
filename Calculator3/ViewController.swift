//
//  ViewController.swift
//  Calculator3
//
//  Created by Michael May on 10/5/16.
//  Copyright © 2016 Michael May. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    var myOperator = "add"
    var firstNumber: Int = 0
    var secondNumber: Int = 0
    var amount: Int?
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textInDisplay = display.text
            display.text = textInDisplay! + digit
        } else {
            display.text = digit
        }
        
        userIsInTheMiddleOfTyping = true
        
        
    }
    
    
    
    @IBAction func clearButton(_ sender: AnyObject) {
        display.text = "0"
        userIsInTheMiddleOfTyping = false
    }
    
    
    
    @IBAction func addButton(_ sender: UIButton) {
        firstNumber = Int(display.text!)!
        print(firstNumber)
        myOperator = "add"
        print(myOperator)
        display.text = "+"
        userIsInTheMiddleOfTyping = false
        
    }
    
   
    @IBAction func minusButton(_ sender: UIButton) {
        firstNumber = Int(display.text!)!
        print(firstNumber)
        myOperator = "minus"
        print(myOperator)
        display.text = "-"
        userIsInTheMiddleOfTyping = false
    }
    
    @IBAction func divisionButton(_ sender: UIButton) {
        firstNumber = Int(display.text!)!
        print(firstNumber)
        myOperator = "divide"
        print(myOperator)
        display.text = "/"
        userIsInTheMiddleOfTyping = false
    }
    
    
    @IBAction func multiplicationButton(_ sender: UIButton) {
        firstNumber = Int(display.text!)!
        print(firstNumber)
        myOperator = "multiply"
        print(myOperator)
        display.text = "x"
        userIsInTheMiddleOfTyping = false
    }
    
    @IBAction func equalsButton(_ sender: UIButton) {
        var amount = 0
            secondNumber = Int(display.text!)!
            print(secondNumber)
        if myOperator == "add" {
            amount = firstNumber + secondNumber
        } else if myOperator == "minus"{
            amount = firstNumber - secondNumber
        } else if myOperator == "divide" {
            amount = firstNumber / secondNumber
        } else {
            amount = firstNumber * secondNumber
        }
        
            print(amount)
            display.text = String(amount)
            userIsInTheMiddleOfTyping = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

