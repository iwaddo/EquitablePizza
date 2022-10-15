//
//  ViewController.swift
//  EquitablePizza
//
//  Created by Ian Waddington on 15/10/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberOfSlicesTextField: UITextField!
    @IBOutlet weak var numberOfEatersTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberOfSlicesTextField.text = ""
        numberOfEatersTextField.text = ""
        resultLabel.text = ""
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        print("calculate button pressed")
        if let numberOfSlices = Double(numberOfSlicesTextField.text!) {
            if let numberOfEaters = Double(numberOfEatersTextField.text!) {
                if numberOfEaters != 0 {
                    resultLabel.text = "Each person gets \(numberOfSlices / numberOfEaters) slices"
                } else {
                    resultLabel.text = "Cannot divide by zero."
                }
            } else {
                resultLabel.text = "Please enter a valid number of eaters."
            }
        } else {
                    resultLabel.text = "Please enter a valid number of slices."
        }
    }
}
