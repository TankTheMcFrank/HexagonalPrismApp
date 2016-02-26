//
//  ViewController.swift
//  HexagonalPrismApp
//
//  Created by Frank Herring on 2/15/16.
//  Copyright © 2016 Frank Herring. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet var nameField: UITextField!
    @IBOutlet var sideField: UITextField!
    @IBOutlet var heightField: UITextField!
    @IBOutlet var perimeterLabel: UILabel!
    @IBOutlet var baseLabel: UILabel!
    @IBOutlet var surfaceAreaLabel: UILabel!
    @IBOutlet var volumeLabel: UILabel!
    let shape = CalculatePrism()
    let fmt = NSNumberFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        fmt.numberStyle = .DecimalStyle
        fmt.maximumFractionDigits = 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func buttonPressed(sender: UIButton) {
        nameField.resignFirstResponder()
        sideField.resignFirstResponder()
        heightField.resignFirstResponder()
        
        shape.setLabel(nameField.text!)
        if sideField.text != "" {
            shape.setSide(Double(sideField.text!)!)
        }
        else {
            shape.setSide(0.0)
        }
        if heightField.text != "" {
            shape.setHeight(Double(heightField.text!)!)
        }
        else {
            shape.setHeight(0.0)
        }
        
        perimeterLabel.text = fmt.stringFromNumber(shape.basePerimeter())
        baseLabel.text = fmt.stringFromNumber(shape.baseArea())
        surfaceAreaLabel.text = fmt.stringFromNumber(shape.surfaceArea())
        volumeLabel.text = fmt.stringFromNumber(shape.volume())
        
        print(shape.toString())
    }
    
}

