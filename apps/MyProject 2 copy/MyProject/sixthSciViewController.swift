//
//  sixthSciViewController.swift
//  MyProject
//
//  Created by user191359 on 4/22/21.
//

import UIKit

class sixthSciViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var voltage: UITextField!
    @IBOutlet weak var resualt: UITextView!
    @IBOutlet weak var resistance: UITextField!
    @IBAction func calculate(_ sender: Any) {
        
        let V = (voltage.text! as NSString).doubleValue
        let R = (resistance.text! as NSString).doubleValue
        let current: Double = V / R
    resualt.text = "\(current)"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.voltage.delegate = self
        self.resistance.delegate = self
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
}
