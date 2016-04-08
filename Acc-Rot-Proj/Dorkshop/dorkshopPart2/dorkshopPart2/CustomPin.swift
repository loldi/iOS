//
//  CustomPin.swift
//  Stumble
//
//  Created by Andrew Genualdi on 11/22/15.
//  Copyright © 2015 Andrew Genualdi. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class CustomPin : NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    init(coordinate: CLLocationCoordinate2D, title: String, subtitle: String) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
    
    
    
}