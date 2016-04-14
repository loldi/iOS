//
//  ImageCollectionViewCell.swift
//  jiaTest
//
//  Created by Andrew Genualdi on 4/8/16.
//  Copyright © 2016 Andrew Genualdi. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    //this is where you connect the images to the view cell, you'll also do the label/etc here.
    @IBOutlet weak var titleText: UILabel!
    
    @IBOutlet weak var directorTitle: UILabel!
    
    @IBOutlet weak var tagName: UILabel!
    
    @IBOutlet weak var previewImages: UIImageView!
}
