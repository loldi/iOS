//
//  MapViewViewController.swift
//  Stumble
//
//  Created by Andrew Genualdi on 11/20/15.
//  Copyright © 2015 Andrew Genualdi. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit


class FirstViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    
    
    lazy var locationManager: CLLocationManager = {
        
        let manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        return manager
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestWhenInUseAuthorization()
        
        
        
        
    }
    
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if case .AuthorizedWhenInUse = status {
            manager.requestLocation()
        }
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let pin = CustomPin(coordinate: locations.last!.coordinate, title: "iOS Part 2 with Raha and Andrew!", subtitle: "With Raha and Andrew!")
        mapView.centerCoordinate = pin.coordinate
        mapView.addAnnotation(pin)
        
        let currentLocation = locationManager.location
        
        let span = MKCoordinateSpanMake(0.075, 0.075)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: currentLocation!.coordinate.latitude, longitude: currentLocation!.coordinate.longitude), span: span)
        mapView.setRegion(region, animated: true)
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        
        let coordinates = CLLocationCoordinate2D(latitude: 90.0000, longitude: 0.0000)
        
        let pin = CustomPin(coordinate: coordinates, title: "North Pole", subtitle: "Santa's House")
        
        mapView.centerCoordinate = coordinates
        mapView.addAnnotation(pin)
        
        let span = MKCoordinateSpanMake(0.075, 0.075)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 90.0000, longitude: 0.000), span: span)
        mapView.setRegion(region, animated: true)
    }
    
    
}

extension FirstViewController: MKMapViewDelegate {
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        let pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pin")
        pin.pinTintColor = UIColor.orangeColor()
        pin.canShowCallout = true
        if let logo = UIImage(named: "dorkshop.png") {
            pin.detailCalloutAccessoryView = UIImageView(image: logo)
        }
        return pin
    }
}




