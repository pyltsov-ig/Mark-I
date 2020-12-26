//
//  ViewController.swift
//  Mark-I
//
//  Created by ИГОРЬ on 19/12/2020.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayResultLabel: UILabel!
    var stillTyping = false // флаг для определения продолжения ввода
    var commaExists = false
    var firstOperand:   Double = 0
    var secondOperand:  Double = 0
    var operationSign:  String = ""
    var currentInput:   Double {
        get {
            return Double(displayResultLabel.text!)!
        }
        set {
            displayResultLabel.text = "\(newValue)"
            stillTyping = false
        }
    }
    
    
    
    
    
    @IBAction func numberPressed(_ sender: UIButton) {
        let number = sender.currentTitle!
        
        if stillTyping {
            if (displayResultLabel.text?.count)! < 20 {
                displayResultLabel.text = displayResultLabel.text! + number
            }
        } else {
            displayResultLabel.text = number
            if number != "0" {
                stillTyping = true
            }
        }
        
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        operationSign = sender.currentTitle!
        firstOperand = currentInput
        stillTyping = false
        commaExists = false
        
    }
    
    func operateWithTwoOperands(operation: (Double, Double) -> Double) {
        print(firstOperand)
        print(secondOperand)
        currentInput = operation(firstOperand, secondOperand)
        stillTyping = false

    }
    
    @IBAction func equalPressed(_ sender: UIButton) {
        
        if stillTyping {
            secondOperand = currentInput
        }
        
        commaExists = false
        
        print("First \(firstOperand)")
        print("Secind \(secondOperand)")

        
        switch operationSign {
        case "+": operateWithTwoOperands {$0 + $1}
        case "-": operateWithTwoOperands {$0 - $1}
        case "/": operateWithTwoOperands {$0 / $1}
        case "x": operateWithTwoOperands {$0 * $1}
            
        default: break
        }
    }
    
    @IBAction func allClearPressed(_ sender: UIButton) {
        firstOperand = 0
        secondOperand = 0
        currentInput = 0
        displayResultLabel.text = "0"
        stillTyping = false
        commaExists = false
        operationSign = ""
    }
    

    @IBAction func inversePressed(_ sender: UIButton) {
        currentInput = -currentInput
    }
    

    @IBAction func percentPressed(_ sender: UIButton) {
        if firstOperand == 0 {
            currentInput = currentInput/100
        } else {
            //currentInput = firstOperand * currentInput / 100
            secondOperand = firstOperand * currentInput / 100
            currentInput = secondOperand
        }
    }
    
    @IBAction func reversePressed(_ sender: UIButton) {
        currentInput = 1/currentInput
    }
    
    @IBAction func commaPressed(_ sender: UIButton) {
        if stillTyping && !commaExists {
            displayResultLabel.text = displayResultLabel.text!+"."
            commaExists = true
        } else if !stillTyping && !commaExists {
            displayResultLabel.text = ".0"
        }
            
        
    }
    
}

