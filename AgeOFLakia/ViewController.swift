//
//  ViewController.swift
//  AgeOFLakia
//
//  Created by Brent Robertson on 3/03/2015.
//  Copyright (c) 2015 CogFrog Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelDogYears: UILabel!
    @IBOutlet weak var convertedDogYearsText: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertToDogYears(sender: UIButton) {
        
        let stringFromTextField = convertedDogYearsText.text
        let optionalIntFromTextField = stringFromTextField.toInt()
        let intFromOptional = optionalIntFromTextField!
        
        labelDogYears.text = "\(intFromOptional * 7)" + " Human Years"
        
        labelDogYears.hidden = false
        convertedDogYearsText.resignFirstResponder()
        
    }
    
    @IBAction func convertAgeRequirement(sender: UIButton) {
        
        let stringFromTextField = convertedDogYearsText.text
        let optionalDoubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        //I have added new inputs to convert to Real Human years. 
        //Each human year equals 10.5 dog years for the first 2 years then 4 yrs for every year after that. 

        if optionalDoubleFromTextField > 2
        {
            realDogYears = (10.5 * 2) + (optionalDoubleFromTextField - 2) * 4
        }
        else
        {
            realDogYears = optionalDoubleFromTextField * 10.5
        }
        
        labelDogYears.text = "\(realDogYears)" + " Real Human Years"
        convertedDogYearsText.resignFirstResponder()
    }


}

