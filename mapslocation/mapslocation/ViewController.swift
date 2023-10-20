//
//  ViewController.swift
//  mapslocation
//
//  Created by Anita Hegde on 10/18/23.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var lblLattitude: UILabel!
    
    @IBOutlet weak var lblLogitude: UILabel!
    
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyKilometer
        startSignificantChangeLocation()
    }


    @IBAction func getLocationAction(_ sender: Any) {
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let locations = locations.last else {return}
        let lat = locations.coordinate.latitude
        let long = locations.coordinate.longitude

        lblLattitude.text = "Lattitude = \(lat)"
        lblLogitude.text = "Lattitude = \(long)"
        
        getLocationAddress(location: locations)
    }
    
    func startSignificantChangeLocation(){
        if CLLocationManager.significantLocationChangeMonitoringAvailable(){
            locationManager.startMonitoringSignificantLocationChanges()
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
           print("Error in getting location = \(error.localizedDescription)")
       }
       
       func getLocationAddress(location: CLLocation) {
           let clGeoCoder = CLGeocoder()
           
           clGeoCoder.reverseGeocodeLocation(location) { placemarks, error in
               if let error = error {
                   print("Error in getting location from Geocoder = \(error.localizedDescription)")
                   return
               }
               
               guard let place = placemarks?.last else { return }
               var address = ""
               print(place.name)
               print(place.locality)
               print(place.region)
           }
       }
   }
