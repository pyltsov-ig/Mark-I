//
//  ViewController.swift
//  Mark-I
//
//  Created by ИГОРЬ on 19/12/2020.
//  Алгоритмы обработчика сделаны на основе курса https://swiftbook.ru/content/8-index/
//  

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayResultLabel: UILabel!
    var stillTyping = false // флаг для определения продолжения ввода
    var commaExists = false // запятая нажата? должно быть только один раз
    var firstOperand:   Double = 0
    var secondOperand:  Double = 0
    var operationSign:  String = ""
    var currentInput:   Double { //текущее число на дисплее
        get {
            return Double(displayResultLabel.text!)! // возвращает значение на дисплее
        }
        set {
            let value = "\(newValue)" // записываем новое значение
            let valueArray = value.components(separatedBy: ".")// разделяем значение на массив,
            if valueArray[1] == "0" { // определяем, есть дробная часть
                displayResultLabel.text = "\(valueArray[0])" // если нет, то пишем целую часть
            } else {
                displayResultLabel.text = "\(newValue)" // если есть, то все целиком
            }
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
        currentInput = operation(firstOperand, secondOperand)
        stillTyping = false

    }
    
    @IBAction func equalPressed(_ sender: UIButton) {
        
        if stillTyping {
            secondOperand = currentInput
        }
        
        commaExists = false
        
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
        } else if !stillTyping && !commaExists {
            displayResultLabel.text = "0."
            commaExists = true
            stillTyping = true
        }
        
    }
    
}

