//
//  ViewController.swift
//  intDivider
//
//  Created by Paulo Custódio on 30/07/2020.
//  Copyright © 2020 Paulo Custódio. All rights reserved.
//

// Solution: Keep subtracting the divisor from dividend until dividend is less than divisor. Dividend then becomes the remainder, and the number of times subtraction is done is the quotient.

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dividendField: UITextField!
    @IBOutlet weak var divisorField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var dividerBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(divide(dividend: 6, divisor: 3))
        
        //add round corners to button... because it's prettier
        dividerBtn.layer.cornerRadius = 5.0
    }
    
    @IBAction func intDivide(_ sender: Any) {
        

        
        guard var dividend = Int(dividendField.text!) else {
            return
        }
        guard var divisor = Int(divisorField.text!) else {
            return
        }

        
        var sign = 0
        
        // Calculate sign of divisor i.e., sign will be negative only if either one of them is negative otherwise it will be positive
        if (dividend >= 0) == (divisor > 0) {
            sign = 1
        } else {
            sign = -1
        }
        
        // Initialize the quotient
        var quotient = 0
        
        while (dividend >= divisor) {
            dividend -= divisor
            quotient += 1
        }
        resultLabel.text = "\(sign * quotient)"
    }
    
    func divide(dividend: Int, divisor: Int) -> Int {
        
        var sign = 0
        
        // Calculate sign of divisor i.e., sign will be negative only if either one of them is negative otherwise it will be positive
        if (dividend >= 0) == (divisor > 0) {
            sign = 1
        } else {
            sign = -1
        }
        
        //Update both divisor and dividend positive
        var dividend = Int(abs(dividend))
        let divisor = Int(abs(divisor))
        
        // Initialize the quotient
        var quotient = 0
        
        while (dividend >= divisor) {
            dividend -= divisor
            quotient += 1
        }
        return sign * quotient
    }
}

