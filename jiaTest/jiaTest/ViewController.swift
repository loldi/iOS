//
//  ViewController.swift
//  jiaTest
//
//  Created by Andrew Genualdi on 4/8/16.
//  Copyright © 2016 Andrew Genualdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //connects the collectionview to the view controller

    @IBOutlet var previewInformation: UICollectionView!
    
    //array of image file names for the pictures that should go in your Assets.xcassets folder.  the images are linked in the file "ImageCollectionViewCell" on the left
    
    var tableImg: [String] = ["1.png", "2.png", "3.png", "4.png" , "5.png"]
    
    var titleText: [String] = ["Movie 1", "TV Show 2", "Title 3", "Title 4" , "Title 5"]
    
    
    //you need the following 2 function to make the collection view to connect properly, dont worry about them right now
    
    func collectionView(previewInformation: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tableImg.count
    }
    
    func collectionView(previewInformation: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell: ImageCollectionViewCell = previewInformation.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! ImageCollectionViewCell
        
        cell.previewImages.image = UIImage(named: tableImg[indexPath.row])
        cell.titleText.text = titleText[indexPath.row]
        
        return cell
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

