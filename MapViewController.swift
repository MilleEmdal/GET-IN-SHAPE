//
//  MapViewController.swift
//  GET´IN SHAPE
//
//  Created by Mille  Emdal on 02/05/2018.
//  Copyright © 2018 Mille  Emdal. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate, UISearchBarDelegate {

  
    @IBOutlet weak var map: MKMapView!
    
    let manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.requestLocation()
        manager.startUpdatingLocation()
    }
    
//     function to update the map
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    
       let location = locations[0]
    
        let center = location.coordinate

        let span = MKCoordinateSpan (latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion (center: center, span: span)

        map.setRegion(region, animated: true)
        map.showsUserLocation = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}



