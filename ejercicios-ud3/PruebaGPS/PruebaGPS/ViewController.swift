//
//  ViewController.swift
//  PruebaGPS
//
//  Created by  on 17/1/17.
//  Copyright © 2017 Iñaki. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
let locationManager = CLLocationManager()
    var altitud:String = ""
     var longitud:String = ""
     var latitud:String = ""
    var contador=0
    @IBOutlet weak var textLongitud: UITextField!
    @IBOutlet weak var textLatitud: UITextField!
    @IBOutlet weak var textAltura: UITextField!
    @IBOutlet weak var textContador: UILabel!
    
    @IBAction func botonPosicion(_ sender: UIButton) {
       textAltura.text = altitud
       textLongitud.text = longitud
        textLatitud.text = latitud

        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Ask for Authorisation from the User.
        self.locationManager.requestAlwaysAuthorization()
        
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        contador += 1
        textContador.text = "Nº Adquisiciones: \(contador)"
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        altitud = "\(manager.location!.altitude)"
        print(contador)
        print("locations = \(locValue.latitude) \(locValue.longitude)")
        
        longitud = "\(locValue.longitude)"
        latitud = "\(locValue.latitude)"
    }
}

