//
//  ViewController.swift
//  PruebaGPSconMapa
//
//  Created by  on 17/1/17.
//  Copyright © 2017 Iñaki. All rights reserved.
//

import UIKit
import CoreLocation
import GoogleMaps
class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    var altitud:String = ""
    var longitud:String = ""
    var latitud:String = ""
    var contador=0
    var coordenadas = CLLocationManager().location?.coordinate
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GMSServices.provideAPIKey("AIzaSyAcAS32jXy0BTQjCOe_Rnts2pbwAX6eqy4")
        // Do any additional setup after loading the view, typically from a nib.
        
        // Ask for Authorisation from the User.
        self.locationManager.requestAlwaysAuthorization()
        
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
            
            
            
            
        //Mapas
            
            let camera = GMSCameraPosition.camera(withLatitude: (coordenadas?.latitude)!,
                                                              longitude: (coordenadas?.longitude)!, zoom: 6)
            let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
            mapView.isMyLocationEnabled = true
            self.view = mapView
            
           // let marker = GMSMarker()
           // marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
           // marker.title = "Sydney"
           // marker.snippet = "Australia"
           // marker.map = mapView
        }
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        contador += 1
           let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        altitud = "\(manager.location!.altitude)"
        print(contador)
        print("locations = \(locValue.latitude) \(locValue.longitude)")
        
        longitud = "\(locValue.longitude)"
        latitud = "\(locValue.latitude)"
    }
}


