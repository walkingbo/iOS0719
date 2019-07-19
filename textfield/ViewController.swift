//
//  ViewController.swift
//  textfield
//
//  Created by 503_18 on 19/07/2019.
//  Copyright © 2019 503_18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var input: UITextField!
    
    @IBAction func click(_ sender: Any) {
        display.text = input.text
        input.text = ""
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       //input 이 FirstResponder가 되도록 하기
        input.becomeFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        input.resignFirstResponder()
    }

}

