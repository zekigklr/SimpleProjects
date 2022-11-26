//
//  ViewController.swift
//  AlertProject
//
//  Created by Zeki Gökler on 25.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordText2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


    @IBAction func signUpClicked(_ sender: Any) {
        /**
        let alert = UIAlertController(title: "Error", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
         */
        
        if usernameText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username not found!")
        }else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password not found!")
        }else if passwordText2.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password do not match!")
        }else {
            makeAlert(titleInput: "Success", messageInput: "User complete.")
        }
    }
    
    func makeAlert (titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}

