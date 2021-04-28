//
//  MathViewController.swift
//  MyProject
//
//  Created by user191359 on 4/21/21.
//

import UIKit

class MathViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var aVal: UITextField!
    @IBOutlet weak var bVal: UITextField!
    @IBOutlet weak var result: UITextView!
    @IBAction func calculate(_ sender: Any) {
        let a = (aVal.text! as NSString).doubleValue
        let b = (bVal.text! as NSString).doubleValue
        let value: Double = (a*a + b*b)
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
