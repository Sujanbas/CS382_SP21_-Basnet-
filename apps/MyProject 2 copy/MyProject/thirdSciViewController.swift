//
//  thirdSciViewController.swift
//  MyProject
//
//  Created by user191359 on 4/22/21.
//

import UIKit

class thirdSciViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var distance: UITextField!
    @IBOutlet weak var time: UITextField!
    @IBOutlet weak var result: UITextView!
    
    @IBAction func calculate(_ sender: Any) {
        
            let d = (distance.text! as NSString).doubleValue
            let t = (time.text! as NSString).doubleValue
            let velocity: Double = d / t
            result.text = "\(velocity)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.distance.delegate = self
        self.time.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

}
