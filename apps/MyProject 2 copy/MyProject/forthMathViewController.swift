//
//  forthMathViewController.swift
//  MyProject
//
//  Created by user191359 on 4/21/21.
//

import UIKit

class forthMathViewController: UIViewController, UITextFieldDelegate {
    
   
    @IBOutlet weak var aVal: UITextField!
    
    @IBOutlet weak var bVal: UITextField!
    
    @IBOutlet weak var result: UITextView!
    @IBAction func Calculate(_ sender: Any) {
   
    
        let a = (aVal.text! as NSString).doubleValue
        let b = (bVal.text! as NSString).doubleValue
        let value: Double = ((a*a) - (2*a*b) + (b*b))
        result.text = "\(value)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.aVal.delegate = self
        self.bVal.delegate = self


        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
