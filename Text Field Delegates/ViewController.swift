//
//  ViewController.swift
//  Text Field Delegates
//
//  Created by Dmitri Gaisan on 2/24/19.
//  Copyright © 2019 Dmitri Gaisan. All rights reserved.
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

