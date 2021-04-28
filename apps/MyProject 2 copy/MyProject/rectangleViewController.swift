//
//  rectangleViewController.swift
//  MyProject
//
//  Created by user191359 on 4/21/21.
//

import UIKit


class rectangleViewController: UIViewController, UITextFieldDelegate {
    
   
    @IBOutlet weak var length: UITextField!
    
    @IBOutlet weak var breadth: UITextField!
    
    @IBOutlet weak var result: UITextView!
    
    @IBAction func calculate(_ sender: Any) {
    
            let a = (length.text! as NSString).doubleValue
        let b = ( breadth.text! as NSString).doubleValue
        let value: Double = a * b
        result.text = "\(value)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.length.delegate = self
        self.breadth.delegate = self


        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
