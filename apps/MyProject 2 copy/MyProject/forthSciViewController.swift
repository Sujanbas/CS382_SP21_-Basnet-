//
//  forthSciViewController.swift
//  MyProject
//
//  Created by user191359 on 4/22/21.
//

import UIKit

class forthSciViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var Mass: UITextField!
    @IBOutlet weak var result: UITextView!
    @IBAction func calculate(_ sender: Any) {
        let M = (Mass.text! as NSString).doubleValue

        let Weight: Double = M * 9.80665
    result.text = "\(Weight)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.Mass.delegate = self
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
