//
//  MapViewController.swift
//  dorkShopExamples
//
//  Created by Andrew Genualdi on 2/25/16.
//  Copyright © 2016 Andrew Genualdi. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var mapkit: MKMapView!
    
    @IBOutlet var web: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL (string: "http://i3.kym-cdn.com/photos/images/original/001/027/556/b91.gif");
        let requestObj = NSURLRequest(URL: url!);
        web.loadRequest(requestObj);
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
