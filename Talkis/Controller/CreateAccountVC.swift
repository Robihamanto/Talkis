//
//  CreateAccountVC.swift
//  Talkis
//
//  Created by Robihamanto on 22/10/17.
//  Copyright © 2017 bcc. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeButtonDidTap(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
    }
    
}
