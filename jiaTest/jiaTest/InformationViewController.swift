//
//  InformationViewController.swift
//  jiaTest
//
//  Created by Andrew Genualdi on 4/13/16.
//  Copyright © 2016 Andrew Genualdi. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {
    
    var cellPicked:Int = 0
    
    var tableImg: [String] = ["1.png", "2.png", "3.png", "4.png" , "5.png", "1.png"]
    
    var titleText: [String] = ["Movie 1", "TV Show 2", "Title 3", "Title 4" , "Title 5", "Title 6"]
    
    var directorTitle:[String] = [
        "Andrew Niccol",
        "Andrew Niccol",
        "Lana Wachowski, Lana Wachowski",
        "Lana Wachowski, Lana Wachowski",
        "Lana Wachowski, Lana Wachowski",
        "Andrew Niccol"
    ]
    
    let Tag_Name:[String] = [
        "Door",
        "Door",
        "Door",
        "Window",
        "Window",
        "Door"
    ]
    
    let runTimes:[String] = [
        "2 hours 15 minutes",
        "1 hour 15 minutes",
        "2 hours 45 minutes",
        "1 hours 45 minutes",
        "2 hours 15 minutes",
        "2 hours 15 minutes",
    ]
    
    let genres:[String] = [
        "Action",
        "Drama",
        "Mystery",
        "Adventure",
        "Comedy",
        "Comedy"
    ]
    
    
    let movieDescriptions:[String] = [
    
    "Blah blah blah blah blah lots of words to describe the movie",
    "Blah blah blah blah blah lots of words to describe the movie",
    "Blah blah blah blah blah lots of words to describe the movie",
    "Blah blah blah blah blah lots of words to describe the movie",
    "Blah blah blah blah blah lots of words to describe the movie",
    "Blah blah blah blah blah lots of words to describe the movie",
    
    
    ]

    
    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var directorNames: UILabel!
    
    @IBOutlet weak var runTime: UILabel!
    
    @IBOutlet weak var genreInfo: UILabel!
    
    @IBOutlet weak var descriptionText: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        if(cellPicked == 0){
            
            movieImage.image = UIImage (named: tableImg[cellPicked])
            
            movieTitle.text = titleText[cellPicked]
            
            directorNames.text = directorTitle[cellPicked]
            
            runTime.text = runTimes[cellPicked]
            
            genreInfo.text = genres[cellPicked]
            
            descriptionText.text = movieDescriptions[cellPicked]
            
        }
        
        if(cellPicked == 1){
            
            movieImage.image = UIImage (named: tableImg[cellPicked])
            
            movieTitle.text = titleText[cellPicked]
            
            directorNames.text = directorTitle[cellPicked]
            
            runTime.text = runTimes[cellPicked]
            
            genreInfo.text = genres[cellPicked]
            
            descriptionText.text = movieDescriptions[cellPicked]
            
        }
        if(cellPicked == 2){
            
            movieImage.image = UIImage (named: tableImg[cellPicked])
            
            movieTitle.text = titleText[cellPicked]
            
            directorNames.text = directorTitle[cellPicked]
            
            runTime.text = runTimes[cellPicked]
            
            genreInfo.text = genres[cellPicked]
            
            descriptionText.text = movieDescriptions[cellPicked]
            
        }
        
        if(cellPicked == 3){
            
            movieImage.image = UIImage (named: tableImg[cellPicked])
            
            movieTitle.text = titleText[cellPicked]
            
            directorNames.text = directorTitle[cellPicked]
            
            runTime.text = runTimes[cellPicked]
            
            genreInfo.text = genres[cellPicked]
            
            descriptionText.text = movieDescriptions[cellPicked]
            
        }
        if(cellPicked == 4){
            
            movieImage.image = UIImage (named: tableImg[cellPicked])
            
            movieTitle.text = titleText[cellPicked]
            
            directorNames.text = directorTitle[cellPicked]
            
            runTime.text = runTimes[cellPicked]
            
            genreInfo.text = genres[cellPicked]
            
            descriptionText.text = movieDescriptions[cellPicked]
            
        }
        
        if(cellPicked == 5){
            
            movieImage.image = UIImage (named: tableImg[cellPicked])
            
            movieTitle.text = titleText[cellPicked]
            
            directorNames.text = directorTitle[cellPicked]
            
            runTime.text = runTimes[cellPicked]
            
            genreInfo.text = genres[cellPicked]
            
            descriptionText.text = movieDescriptions[cellPicked]
            
        }


    }

 
    


}
