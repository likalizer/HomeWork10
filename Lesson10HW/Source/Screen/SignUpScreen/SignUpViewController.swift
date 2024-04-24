//
//  SignUpViewController.swift
//  Lesson10HW
//

//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var contentView: SignUpView!
    
    override func viewDidLoad() {
        
      super.viewDidLoad()
                setupTextFieldDelegates()
            }

            private func setupTextFieldDelegates() {
                contentView.cardNumberTextField.delegate = self
                contentView.cvvTextField.delegate = self
            }

    @objc(textField:shouldChangeCharactersInRange:replacementString:) func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
                let newText = (textField.text! as NSString).replacingCharacters(in: range, with: string)
                
                if textField == contentView.cardNumberTextField {
                    return newText.count <= 16
                } else if textField == contentView.cvvTextField {
                    return newText.count <= 3
                }
                
                return true 
            }
        }

