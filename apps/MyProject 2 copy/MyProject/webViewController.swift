//
//  webViewController.swift
//  MyProject
//
//  Created by user191359 on 4/27/21.
//

import UIKit
import SafariServices

class webViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped() {
        
        let vc = SFSafariViewController(url: URL(string: "https://www.google.com")!)
        present(vc, animated: true)
        
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
