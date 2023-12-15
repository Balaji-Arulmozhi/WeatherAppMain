//
//  forecast_list_model.swift
//  weatherapp-Bitcot
//
//  Created by Bravery Infotech on 03/08/23.
//

import Foundation
struct ForeCastModel: Decodable{
    var lat:Float
    var lon:Float
    var hourly:[typeHourly]
    var daily:[typeDaily]
    
}

struct typeHourly:Decodable{
    var dt: Int
    var temp: Float
    var feels_like:Float
    var pressure:Int
    var clouds:Int
    var wind_speed:Float
    var weather: [typeweather]
    

}

struct typeDaily:Decodable{
    var dt:Int
    var temp: typeTemp
    var weather:[typeweather]
    var clouds: Int
    var pressure: Int

}
