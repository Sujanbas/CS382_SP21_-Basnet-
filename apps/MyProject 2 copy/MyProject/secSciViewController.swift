//
//  secSciViewController.swift
//  MyProject
//
//  Created by user191359 on 4/22/21.
//

import UIKit

class secSciViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var result: UITextView!
    @IBOutlet weak var Mass: UITextField!
    @IBAction func calculate(_ sender: Any) {
        let A: Double = 9.80665// const accln due to grav on m/s2
       
        let M = (Mass.text! as NSString).doubleValue
        let Force: Double = M*A
        result.text = "\(Force)"
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
