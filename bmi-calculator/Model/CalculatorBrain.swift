//
//  CalculatorBrain.swift
//  bmi-calculator
//
//  Created by Bruno Lopes on 16/12/21.
//

import UIKit

struct CalculatorBrain {
    
    var imc: IMC?
    
    mutating func calculandoIMC(altura: Float, peso:Float) {
        let imcValue = peso / (altura * altura)
        
        switch imcValue {
        case 0...18,4:
            imc = IMC(value: imcValue, advice: "Peso baixo", color: #colorLiteral(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0))
        case 18.5..<25:
            imc = IMC(value: imcValue, advice: "Peso Normal", color: #colorLiteral(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0))
        case 25..<30:
            imc = IMC(value: imcValue, advice: "Sobrepeso", color: #colorLiteral(red: 1.0, green: 0.5, blue: 0.0, alpha: 1.0))
        case 30..<35:
            imc = IMC(value: imcValue, advice: "Obesidade", color: #colorLiteral(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0))
        case 35..<40:
            imc = IMC(value: imcValue, advice: "Obesidade Severa", color: #colorLiteral(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0))
        default:
            imc = IMC(value: imcValue, advice: "Obesidade Mórbida", color: #colorLiteral(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0))
        }
        
    }
    
    func getImcValue() -> String {
        return String(format: "%.1f", imc?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return imc?.advice ?? "nil"
    }
    
    func getColor() -> UIColor {
        imc?.color ?? UIColor.clear
    }
    
    
}
