//
//  SecondViewController.swift
//  TaskList
//
//  Created by Rohan Venapusala on 3/7/15.
//  Copyright (c) 2015 Rohan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    

    @IBOutlet var textTask: UITextField!
    @IBOutlet var textDesc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func addTask(sender: UIButton) {
        taskMgr.addTask(textTask.text, desc: textDesc.text);
        self.view.endEditing(true);
        textTask.text = "";
        textDesc.text = "";
        self.tabBarController?.selectedIndex = 0;
        println("The button was clicked.")
    }
    
    //IOS Touch functions
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }


    //ui text field delegate from the ui api
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        
        // make the keyboard go away
        textField.resignFirstResponder()
        return true
    }
    
}

