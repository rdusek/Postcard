//
//  ViewController.swift
//  Postcard
//
//  Created by robert on 10/1/14.
//  Copyright (c) 2014 rmd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
 
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // this is a test for using git

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.text = enterMessageTextField.text;
        messageLabel.textColor = UIColor.redColor();
        messageLabel.hidden = false;
       
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder();

        nameLabel.text = "To: " + enterNameTextField.text;
        nameLabel.textColor = UIColor.blueColor();
        nameLabel.hidden = false;
        
        enterNameTextField.text = "";
        enterNameTextField.resignFirstResponder();

        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
    }

    
    
}

