//
//  LocationManager.swift
//  weatherapp-Bitcot
//
//  Created by Bravery Infotech on 02/08/23.
//

import Foundation
import CoreLocation

class LocationManager:CLLocationManager,CLLocationManagerDelegate{
    
    static let shared = LocationManager()
    let locationManager = CLLocationManager()
    
    var didUpdatedLocation: (() -> ())?
    var lat, long: String?
    
    func setupLocationManager(){
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        DispatchQueue.global().async {
            if CLLocationManager.locationServicesEnabled() {
                self.locationManager.startUpdatingLocation()
            }
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last
        lat = String(location?.coordinate.latitude ?? 0.0)
        long = String(location?.coordinate.longitude ?? 0.0)
        self.locationManager.stopUpdatingLocation()
        didUpdatedLocation?()
        
    }
    
    func getCoordinates(forLocation location: String, completion: @escaping (CLLocationCoordinate2D?, Error?) -> Void) {
        let geocoder = CLGeocoder()
        
        geocoder.geocodeAddressString(location) { (placemarks, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            
            if let firstLocation = placemarks?.first?.location {
                completion(firstLocation.coordinate, nil)
            } else {
                completion(nil, nil)
            }
        }
    }
}

