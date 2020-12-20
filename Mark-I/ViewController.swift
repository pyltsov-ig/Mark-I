//
//  ViewController.swift
//  Mark-I
//
//  Created by ИГОРЬ on 19/12/2020.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var acButton: UIButton!
    @IBOutlet weak var invButton: UIButton!
    @IBOutlet weak var persButton: UIButton!
    @IBOutlet weak var divButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var multButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var subButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var zerozeroButton: UIButton!
    @IBOutlet weak var commaButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    
    @IBOutlet weak var digitLabel: UILabel!
    
    var numOne = 0.0
    var numTwo = 0.0
    var operationPressed = false
    
    enum Operation {
        case addition
        case substraction
        case multiplication
        case division
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func acTouch(_ sender: Any) {
        digitLabel.text = "0"
        numOne = 0.0
        numTwo = 0.0
    }
    
    @IBAction func invTouch(_ sender: Any) {

    }
    
    @IBAction func persTouch(_ sender: Any) {
        operationPressed = true
    }
    
    @IBAction func divTouch(_ sender: Any) {
        operationPressed = true
        numOne = Double(digitLabel.text!) ?? 0
        
    }
    
    @IBAction func sevenTouch(_ sender: Any) {
        if digitLabel.text == "0" || operationPressed {
            digitLabel.text = "7"
            operationPressed = false
        } else {
            digitLabel.text = digitLabel.text! + "7"
        }
    }
    
    @IBAction func eightTouch(_ sender: Any) {
        if digitLabel.text == "0" || operationPressed {
            digitLabel.text = "8"
            operationPressed = false
        } else {
            digitLabel.text = digitLabel.text! + "8"
        }

    }
    
    @IBAction func nineTouch(_ sender: Any) {
        if digitLabel.text == "0" || operationPressed {
            digitLabel.text = "9"
        } else {
            digitLabel.text = digitLabel.text! + "9"
        }

    }
    
    @IBAction func multTouch(_ sender: Any) {
        operationPressed = true

    }
    
    @IBAction func fourTouch(_ sender: Any) {
        if digitLabel.text == "0" || operationPressed {
            digitLabel.text = "4"
        } else {
            digitLabel.text = digitLabel.text! + "4"
        }
    }
    
    @IBAction func fiveTouch(_ sender: Any) {
        if digitLabel.text == "0" || operationPressed {
            digitLabel.text = "5"
        } else {
            digitLabel.text = digitLabel.text! + "5"
        }

    }
    
    @IBAction func sixTouch(_ sender: Any) {
        if digitLabel.text == "0" || operationPressed {
            digitLabel.text = "6"
        } else {
            digitLabel.text = digitLabel.text! + "6"
        }

    }
    
    @IBAction func subTouch(_ sender: Any) {
        operationPressed = true
    }
    
    @IBAction func oneTouch(_ sender: Any) {
        if digitLabel.text == "0" || operationPressed {
            digitLabel.text = "1"
        } else {
            digitLabel.text = digitLabel.text! + "1"
        }
    }
    
    @IBAction func twoTouch(_ sender: Any) {
        if digitLabel.text == "0" || operationPressed {
            digitLabel.text = "2"
        } else {
            digitLabel.text = digitLabel.text! + "2"
        }

    }
    
    
    @IBAction func threeTouch(_ sender: Any) {
        if digitLabel.text == "0" || operationPressed {
            digitLabel.text = "3"
        } else {
            digitLabel.text = digitLabel.text! + "3"
        }

    }
    
    @IBAction func plusTouch(_ sender: Any) {
        operationPressed = true
    }
    
    @IBAction func zeroTouch(_ sender: Any) {
        if digitLabel.text == "0" || operationPressed {
            digitLabel.text = "0"
        } else {
            digitLabel.text = digitLabel.text! + "0"
        }

    }
    
    @IBAction func zerozeroTouch(_ sender: Any) {
        if digitLabel.text == "0" || operationPressed {
            digitLabel.text = "0"
        } else {
            digitLabel.text = digitLabel.text! + "00"
        }

    }
    
    @IBAction func commaTouch(_ sender: Any) {
        if digitLabel.text == "0" || operationPressed {
            digitLabel.text = "0."
        } else {
            digitLabel.text = digitLabel.text! + "."
        }

    }
    
    @IBAction func equalTouch(_ sender: Any) {
    }
    
}

