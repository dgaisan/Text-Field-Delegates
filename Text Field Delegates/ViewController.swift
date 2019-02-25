//
//  ViewController.swift
//  Text Field Delegates
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var fiveCharactersControl: UITextField!
    @IBOutlet weak var twoDecimalsControl: UITextField!
    @IBOutlet weak var enableDisableControl: UITextField!
    @IBOutlet weak var isEnabledControl: UISwitch!
    
    var fiveCharactersDelegate: UITextFieldDelegate!
    var twoDecimalsDelegate: UITextFieldDelegate!
    var enableDisableDelegate: UITextFieldDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initFiveCharactersControl()
        self.initTwoDecimalsControl()
        self.initEnableDisableControls()
    }
    
    func initFiveCharactersControl() {
        fiveCharactersDelegate = FiveCharactersTextFieldDelegate()
        fiveCharactersControl.delegate = fiveCharactersDelegate
    }

    func initTwoDecimalsControl() {
        twoDecimalsDelegate = TwoDecimalsDelegate()
        twoDecimalsControl.delegate = twoDecimalsDelegate
        twoDecimalsControl.text = "$0.00"
        twoDecimalsControl.keyboardType = .decimalPad
    }
    
    func initEnableDisableControls() {
        enableDisableDelegate = self;
        enableDisableControl.delegate = enableDisableDelegate
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return isEnabledControl.isOn
    }
}

