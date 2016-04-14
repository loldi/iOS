//
//  CardPageViewController.swift
//  birthdayTest
//
//  Created by Andrew Genualdi on 4/14/16.
//  Copyright © 2016 Andrew Genualdi. All rights reserved.
//

import UIKit

class CardPageViewController: UIViewController {
    
    var monthImages = [
        "January.png",
        "February.png",
        "March.png",
        "April.png",
        "May.png",
        "June.png",
        "July.png",
        "August.png",
        "September.png",
        "October.png",
        "November.png",
        "December.png"
        ]
    
    var monthSelected:String = ""
    var dateSelected:String = ""
    
    var endingThing:String = ""
    

    
    @IBOutlet weak var monthPicked: UILabel!
    
    @IBOutlet weak var dayPicked: UILabel!

    @IBOutlet weak var dateDescription: UILabel!
    
    @IBOutlet weak var imageThing: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        if(dateSelected == "1" || dateSelected == "21" || dateSelected == "31"){
           
            endingThing = "st"
        } else if(dateSelected == "2" || dateSelected == "22"){
         
            endingThing = "nd"
        } else if(dateSelected == "3" || dateSelected == "23"){
       
            endingThing = "rd"
        } else {
    
            endingThing = "th"
        }
        
        
        monthPicked.text = monthSelected
        
        dayPicked.text = "\(dateSelected)\(endingThing)"
        
        //This is where you would reference all of your data, it'll be ultra tedious but it's organized in a way that you could do it with (1) a static image that covers the whole screen or (2) labels the populate with the desired text/images icons etc.
        
        //All you have to do is add && dateSelected == "1/2/3/whatever" to the below code to make it do something on a specific day.
        
        if(monthSelected == "January" && dateSelected == "1"){
            
            imageThing.image = UIImage(named: monthImages[0])
            
            dateDescription.text = "You were born on \(monthSelected) \(dateSelected)\(endingThing).  Your card is..etc...etc...and these things...etc...stay away from.....date..etc..things and more things"
        }

        if(monthSelected == "January" && dateSelected == "2"){
            
            imageThing.image = UIImage(named: monthImages[0])
            
            dateDescription.text = "You were born on \(monthSelected) \(dateSelected)\(endingThing)"
        }
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}
