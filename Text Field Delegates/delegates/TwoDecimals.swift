//
//  TwoDecimals.swift
//  Text Field Delegates
//
//  Created by Dmitri Gaisan on 2/24/19.
//  Copyright © 2019 Dmitri Gaisan. All rights reserved.
//

import UIKit

class TwoDecimalsDelegate: NSObject, UITextFieldDelegate {
    var state: String = ""

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let newText: NSString = retrieveCurrentText(textField, range, string);
        var value = removeDot(newText)
        value = removeDollarSign(value)
        value = removeLeadingZeroes(value);
        applyNewTextValue(textField, value)
        return false
    }
    
    private func retrieveCurrentText(_ t: UITextField, _ range: NSRange, _ string: String) -> NSString {
        return (t.text! as NSString).replacingCharacters(in: range, with: string) as NSString
    }
    
    private func removeDot(_ s: NSString) -> String {
        return s.replacingOccurrences(of: ".", with: "")
    }
    
    private func removeDollarSign(_ s: String) -> String {
        return String(s.suffix(s.count - 1))
    }
    
    private func removeLeadingZeroes(_ s: String) -> String {
        return "\(Int(s)!)"
    }
    
    private func applyNewTextValue(_ textField: UITextField, _ value: String) -> Void {
        var output: String = ""

        switch value.count {
        case 1:
            output = "00" + value
        case 2:
            output = "0" + value
        default:
            output = value
        }

        textField.text = "$\(output.prefix(output.count - 2)).\(output.suffix(2))"
    }
}
