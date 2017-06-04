//
//  ViewController.swift
//  signup
//
//  Created by tk's macbook on 2017. 6. 2..
//  Copyright © 2017년 tk's macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var idTextField: UITextField!
    
    @IBOutlet weak var psTextField: UITextField!
    
    @IBOutlet weak var telTextField: UITextField!
    
    @IBOutlet weak var blogTextField: UITextField!
    
    
    @IBOutlet weak var resultTextField: UITextView!
    
    
    @IBAction func signupAction(_ sender: Any) {
        resultTextField.text = "\(nameTextField.text!) 가입을 축하합니다"
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       //print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

