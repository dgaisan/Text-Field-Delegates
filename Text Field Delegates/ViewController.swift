//
//  ViewController.swift
//  Text Field Delegates
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fiveCharactersControl: UITextField!
    @IBOutlet weak var twoDecimalsControl: UITextField!
    var fiveCharactersDelegate: UITextFieldDelegate!
    var twoDecimalsDelegate: UITextFieldDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initFiveCharactersTextField()
        self.initTwoDecimalsTextField()
    }
    
    func initFiveCharactersTextField() {
        fiveCharactersDelegate = FiveCharactersTextFieldDelegate()
        fiveCharactersControl.delegate = fiveCharactersDelegate
    }

    func initTwoDecimalsTextField() {
        twoDecimalsDelegate = TwoDecimalsDelegate()
        twoDecimalsControl.delegate = twoDecimalsDelegate
        twoDecimalsControl.text = "$0.00"
        twoDecimalsControl.keyboardType = .decimalPad
    }
}

