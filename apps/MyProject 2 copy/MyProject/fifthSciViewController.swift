//
//  fifthSciViewController.swift
//  MyProject
//
//  Created by user191359 on 4/22/21.
//

import UIKit

class fifthSciViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var force: UITextField!
    @IBOutlet weak var distance: UITextField!
    @IBOutlet weak var reasult: UITextView!
    
    @IBAction func calculate(_ sender: Any) {
        
        let F = (force.text! as NSString).doubleValue
        let D = (distance.text! as NSString).doubleValue
        let Work: Double = F * D
    reasult.text = "\(Work)"
    
    }
    
  
override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    self.force.delegate = self
    self.distance.delegate = self
}

override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
}



}
