//
//  ViewController.swift
//  Post Card
//
//  Created by Michael Granberry II on 1/7/15.
//  Copyright (c) 2015 Michael Granberry II. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButtom: UIButton!
    
    @IBOutlet weak var messageLabelEnterName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtomPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButtom.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        messageLabelEnterName.hidden = false
        messageLabelEnterName.text = enterNameTextField.text
        messageLabelEnterName.textColor = UIColor.blueColor()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
    }

}

