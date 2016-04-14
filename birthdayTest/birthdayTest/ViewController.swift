//
//  ViewController.swift
//  birthdayTest
//
//  Created by Andrew Genualdi on 4/14/16.
//  Copyright © 2016 Andrew Genualdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var pickerView: UIPickerView!
    
  
    var monthPicked:String = "January"

    
    var dayPicked:Int = 1
    
    
    var months = ["January",
                  "February",
                  "March",
                  "April",
                  "May",
                  "June",
                  "July",
                  "August",
                  "September",
                  "October",
                  "November",
                  "December"
                ];
    
    var days = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.dataSource = self;
        self.pickerView.delegate = self;
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if(component == 0)
        {
           return months.count
        } else {
       return  days.count
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if(component == 0){
            
            return months[row]
        } else {
            
            return String(days[row])
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(component == 0){
        monthPicked = months[row]
        }
        else if (component == 1){
        dayPicked = days[row]
        }
        
    }
    
    @IBAction func makeSelection(sender: AnyObject) {
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
         assert(sender as? UIButton != nil, "sender is not a button view")
        if (segue.identifier == "segueTest") {
            let svc = segue.destinationViewController as! CardPageViewController
            
            svc.monthSelected = monthPicked
            
            svc.dateSelected = String(dayPicked)
            
        }
    }

    
    
    
    
    
    


}

