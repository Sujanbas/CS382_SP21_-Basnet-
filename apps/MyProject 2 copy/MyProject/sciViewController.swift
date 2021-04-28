//
//  sciViewController.swift
//  MyProject
//
//  Created by user191359 on 4/22/21.
//

import UIKit

class sciViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var Mass: UITextField!
    
    @IBOutlet weak var reasult: UITextView!
    @IBAction func calculate(_ sender: Any) {
        let M = (Mass.text! as NSString).doubleValue

    let energy: Double = M * 299792458 //speed of light cons
      
         reasult.text  = "\(energy)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Mass.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
