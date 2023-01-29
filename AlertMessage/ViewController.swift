//
//  ViewController.swift
//  AlertMessage
//
//  Created by west on 28/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordtAgaintText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClick(_ sender: Any) {
        
//        let alert = UIAlertController(title: "Error!", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
//        let okButton = UIAlertAction(title: "Ok", style:UIAlertAction.Style.default, handler: {(UIAlertAction) in
//            print("Button Click")
//        })
//        alert.addAction(okButton)
//        self.present(alert, animated: true, completion: nil)
        
        if usernameText.text  == "" {
           makeAlert(titleInput: "Error!", messageInput: "Username not found")
        } else if passwordText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Password not found")
        } else if passwordText.text != passwordtAgaintText.text {
            makeAlert(titleInput: "Error!", messageInput: "Password don't match")
        } else {
            makeAlert(titleInput: "Success", messageInput: "User Ok")
        }
    }
    
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title:titleInput, message:messageInput, preferredStyle:UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion:nil)
        
    }
    
}

