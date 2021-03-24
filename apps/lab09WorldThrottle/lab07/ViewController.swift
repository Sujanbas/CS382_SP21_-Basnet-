//
//  ViewController.swift
//  lab07
//
//  Created by user191359 on 2/26/21.


import Foundation

class ConversionViewController: UIViewController {
    @IBOutlet var celsiusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ConversionViewController loaded its view.")
        
    }
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
    if let text = textfield.text , !text.isEmpty { celsiusLabel.text = text
    }
    else {
    celsiusLabel.text = "???"
    } }
 
} }
