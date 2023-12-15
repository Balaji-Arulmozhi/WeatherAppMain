//
//  homeController.swift
//  weatherapp-Bitcot
//
//  Created by Bravery Infotech on 17/02/23.
//

import Foundation
import UIKit
import Network

class HomeViewModel:ObservableObject<Any>{
    var locationManager = LocationManager.shared
    var networkManager:NetworkManager = NetworkManager()
    var observables : ObservableObject<HomeAndForeCastModel> = ObservableObject(value: nil)
    let commonMethods = CommonMethods.shared
   
    
    
    func getTemp(max: Float, min : Float) -> String{
        let max = commonMethods.kelToCel(temp: max)
        let min = commonMethods.kelToCel(temp: min)
        return "\(max)/\(min)°"
        
    }
    
}

// MARK: - This extension helps to get the data by calling Webservice
extension HomeViewModel{
    
    // MARK: - This for  current weather data
    func getHomeData(lat:String ,long:String){
        let url = URL(string:
                        "\(CommonVariables.baseUrl)weather?lat=\(lat)&lon=\(long)&\(CommonVariables.appID)")!
        
        if(commonMethods.isConnect!){
            networkManager.getDataFromAPI(url: url, val: HomeModel.self) {[weak self] data in
                switch data{
                case .success(let data):
                    if let data = data as? HomeModel{
                        self?.observables.value =  HomeAndForeCastModel(homeModel: data)
                    }
                case .failure(let failure):
                    self?.observables.value = HomeAndForeCastModel(message: failure.reason)
                }
            }
        }else{
            self.observables.value = HomeAndForeCastModel(message: "No network connection")
        }
    }
    
    //     MARK: - This for  next days weather data
    func getForecastData(lat:String , long:String){
        let url = URL(string:
                        "\(CommonVariables.baseUrl)onecall?lat=\(lat)&lon=\(long)&\(CommonVariables.appID)")!
        if(commonMethods.isConnect!){
            networkManager.getDataFromAPI(url: url, val: ForeCastModel.self) {[weak self] data in
                
                switch data{
                case .success(let data):
                    if let data = data as? ForeCastModel{
                        self?.observables.value = HomeAndForeCastModel(forecastModel: data)
                    }
                case .failure(let failure):
                    self?.observables.value = HomeAndForeCastModel(message: failure.reason)
                }
                
            }
        }else{
            self.observables.value = HomeAndForeCastModel(message: "No network connection")
        }
    }
    
}


//MARK: - This extension helps to get the current lat and long  by calling Location manager before API calls
extension HomeViewModel{
    
    func getUserCurrentLocation(){
        locationManager.setupLocationManager()
        locationManager.didUpdatedLocation = {
            
            guard let lat = self.locationManager.lat,
                  let long = self.locationManager.long else{
                return
            }
            self.getHomeData(lat: lat, long: long)
            self.getForecastData(lat: lat, long: long)
            
        }
    }
    
    func getCoordinatesFromPlaceName(location: String){
        locationManager.getCoordinates(forLocation:location) { [weak self] coordinates, error in
            
            if let coordinates = coordinates {
                self?.getForecastData(lat:"\(coordinates.latitude)" , long: "\(coordinates.longitude)")
            } else {
                self?.observables.value = HomeAndForeCastModel(message: "Please enter valid location")
            }
        }
        
    }
    
}





