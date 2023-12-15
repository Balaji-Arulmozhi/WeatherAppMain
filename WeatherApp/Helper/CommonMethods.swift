//
//  CommonFunctions.swift
//  WeatherApp
//
//  Created by Bravery Infotech on 22-09-1945.
//

import Foundation
import UIKit
import Network

class CommonMethods{
    static let shared  = CommonMethods()
    var isConnect: Bool?
    let monitor = NWPathMonitor()
    private var queue = DispatchQueue.global()
    let imageUrl = "https://openweathermap.org/img/wn/"
    var image: UIImage!
    
    
    
    
    //    MARK: - ImageConverter
    func loadImage(icon: String,  completion: @escaping (UIImage) ->()) {
        let url = URL(string:imageUrl + "\(icon)@2x.png")!
        
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                        completion(image)
                    }
                }
            }
        }
    }
    
    //    MARK: - This method helps convert Timestamp to DataAndTime
    func dateAndtime(timestamp:Int, format: Bool) -> String{
        
        let datea = NSDate(timeIntervalSince1970:TimeInterval(timestamp))
        let stdate = String(describing:datea)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss z"
        let date = dateFormatter.date(from: stdate)
        
        // To convert the date into an HH:mm format
        if format == true{
            dateFormatter.dateFormat = "HH:mm"
        }else{
            dateFormatter.dateFormat = "E,d,MMM"
        }
        let dateString = dateFormatter.string(from: date!)
                return String(describing: dateString)
    }
    
    //    MARK: - This methods helps to convert Celsius
    func convertToCelsius(fahrenheit: Double) -> Int {
        return Int(5.0 / 9.0 * (Double(fahrenheit) - 32.0))
    }
    
    //    MARK: - This methods helps  convert  kelvin to Celsius
    func kelToCel(temp: Float) -> Int{
        return Int(temp - 273)
    }
    
    //    MARK: - This method can check usersnetwork connection and should assign value to isConnected
    func isConnected(){
        monitor.start(queue: queue)
        monitor.pathUpdateHandler = { [ weak self] path in
            self?.isConnect =  path.status == .satisfied
        }
    }
    
    //    MARK: - This method create  alert messages  for 2 sec
    func alertMessage(message : String? , view: UIViewController){
        let alert =  UIAlertController(title: "", message: message, preferredStyle: .alert)
        view.present(alert, animated: true)
        DispatchQueue.main.asyncAfter(deadline: .now()+2
                                      , execute: {
            alert.dismiss(animated: true)
        })
    }
    
    
}
