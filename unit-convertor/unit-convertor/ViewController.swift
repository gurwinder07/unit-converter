//
//  ViewController.swift
//  unit-convertor
//
//  Created by Barjinder Singh on 2019-03-05.
//  Copyright © 2019 gurwinder Singh. All rights reserved.
//

import UIKit
import Foundation






class ViewController: UIViewController{
  
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var output: UILabel!
   
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    
    
    
    
    
    @IBAction func convert(_ sender: AnyObject) {
        
        var convertedNumber = Int(input.text!)!
        convertedNumber = convertedNumber * 9/5 + 32
        output.text = " \(convertedNumber) °F"
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            var convertedNumber = Int(input.text!)!
            convertedNumber = convertedNumber * 9/5 + 32
            output.text = " \(convertedNumber) °F"
            
            
        case 1:
            var convertedNumber = Int(input.text!)!
            convertedNumber = (convertedNumber - 32) * 5/9
            output.text = " \(convertedNumber) °C"
        default:
            break
        }

        
    }
    
    
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
}

}


