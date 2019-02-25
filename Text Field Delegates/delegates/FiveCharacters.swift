//  FiveCharacters.swift
//  Text Field Delegates
//
// A delegate that allows only 5 characters in UITextField

import UIKit

class FiveCharactersTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        return newText.length <= 5
    }
}
