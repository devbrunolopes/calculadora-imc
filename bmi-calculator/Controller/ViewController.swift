//
//  ViewController.swift
//  bmi-calculator
//
//  Created by Bruno Lopes on 16/12/21.
//

import UIKit

class ViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var alturaLabel: UILabel!
    @IBOutlet weak var pesoLabel: UILabel!
    @IBOutlet weak var alturaSlider: UISlider!
    @IBOutlet weak var pesoSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func alturaSliderAlterado(_ sender: UISlider) {
        let altura = String(format: "%.2f", sender.value)
        alturaLabel.text = "\(altura) m"
        
    }
    
    @IBAction func pesoSliderAlterado(_ sender: UISlider) {
        let peso = String(format: "%.0f", sender.value)
        pesoLabel.text = "\(peso) Kg"
    }
    
    @IBAction func botaoCalcularPressionado(_ sender: UIButton) {
        let altura = alturaSlider.value
        let peso = pesoSlider.value        
        
        calculatorBrain.calculandoIMC(altura: altura, peso: peso)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.imcValue = calculatorBrain.getImcValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
                
    }
    
    


}

