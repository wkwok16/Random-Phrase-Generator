//
//  ViewController.swift
//  NewApp
//
//  Created by William Kwok on 2/10/16.
//  Copyright © 2016 William Kwok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputText: UITextField!
    @IBOutlet var inputButton: UIButton!
    @IBOutlet var generateButton: UIButton!
    @IBOutlet var generated: UITextView!
    
    let generateList = ListThing()
    
    @IBAction func generate(sender: AnyObject)
    {
        generated.text = generateList.returnString()
    }
    
    @IBAction func add(sender:AnyObject)
    {
        let input: String = inputText.text!
        generateList.addString(input)
        inputText.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

