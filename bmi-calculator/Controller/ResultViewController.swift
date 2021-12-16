//
//  ResultViewController.swift
//  bmi-calculator
//
//  Created by Bruno Lopes on 16/12/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    var imcValue: String?
    var color: UIColor?
    var advice: String?
    
    @IBOutlet weak var imcLabel: UILabel!
    @IBOutlet weak var avisoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if imcValue != nil {
            imcLabel.text = imcValue
        }
        
        avisoLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func botaoRecalcularPressionado(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    


}
