//
//  CreateAccountVC.swift
//  Talkis
//
//  Created by Robihamanto on 22/10/17.
//  Copyright © 2017 bcc. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeButtonDidTap(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
    }
    
    @IBAction func createAccountDidTap(_ sender: Any) {
        guard let email = emailText.text, emailText.text != "" else
        {
            return
        }
        guard let password = passwordText.text, passwordText.text != "" else
        {
            return
        }
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success {
                print("User registered!")
                AuthService.instance.login(email: email, password: password, completion: { (success) in
                    if success {
                        print("Logged In User", AuthService.instance.authToken)
                    }
                })
            }
        }
        
    }
    
    @IBAction func chooseAvatarDidTap(_ sender: Any) {
    }
    
    @IBAction func generateAvatarDidTap(_ sender: Any) {
    }
    
    
    
}
