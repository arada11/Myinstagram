//
//  ViewController.swift
//  Myinstagram
//
//  Created by WebEngineering on 3/3/2559 BE.
//  Copyright © 2559 WebEngineering. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var uname: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var repass: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signup() {
        let kumu = Kumulos()
        kumu.createUserWithUsername(uname.text, andPassword: pass.text, andEmail: email.text, andAuthData: "test")
        
    }

    @IBAction func cancel() {
        uname.text = ""
        email.text = ""
        pass.text = ""
        repass.text = ""
    }
}

