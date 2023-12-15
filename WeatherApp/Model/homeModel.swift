//
//  homeModel.swift
//  weatherapp-Bitcot
//
//  Created by Bravery Infotech on 16/02/23.
//

import Foundation

struct HomeModel:Decodable{
    var weather: [currentWeather]
    var main: currentMain
    var wind: currentWind
    var dt:Int
    var sys:currentSys
    var name: String
}

struct typeweather:Decodable{
    var id:Int
    var main:String
    var description:String
    var icon:String
}


struct typeTemp:Decodable{
    var day :Float
    var min:Float
    var max:Float
}

struct currentWeather:Decodable{
    var description:String
    var icon:String
}

struct currentMain:Decodable{
   var  temp:Float
   var feels_like:Float
   var pressure:Float
    
}

struct currentWind:Decodable{
    var speed: Float
}

struct currentSys:Decodable{
    var country: String
    var sunrise: Int
}

















/**
 {
   "lat": 33.44,
   "lon": -94.04,
   "timezone": "America/Chicago",
   "timezone_offset": -21600,
   "current": {
     "dt": 1676530838,
     "sunrise": 1676552371,
     "sunset": 1676592075,
     "temp": 294.26,
     "feels_like": 294.7,
     "pressure": 1006,
     "humidity": 87,
     "dew_point": 292.01,
     "uvi": 0,
     "clouds": 75,
     "visibility": 10000,
     "wind_speed": 5.36,
     "wind_deg": 170,
     "weather": [
       {
         "id": 803,
         "main": "Clouds",
         "description": "broken clouds",
         "icon": "04n"
       }
     ]
   },
   "minutely": [
     {
       "dt": 1676530860,
       "precipitation": 0
     },
     {
       "dt": 1676530920,
       "precipitation": 0
     },
     {
       "dt": 1676530980,
       "precipitation": 0
     },
     {
       "dt": 1676531040,
       "precipitation": 0
     },
     {
       "dt": 1676531100,
       "precipitation": 0
     },
     {
       "dt": 1676531160,
       "precipitation": 0
     },
     {
       "dt": 1676531220,
       "precipitation": 0
     },
     {
       "dt": 1676531280,
       "precipitation": 0
     },
     {
       "dt": 1676531340,
       "precipitation": 0
     },
     {
       "dt": 1676531400,
       "precipitation": 0
     },
     {
       "dt": 1676531460,
       "precipitation": 0
     },
     {
       "dt": 1676531520,
       "precipitation": 0
     },
     {
       "dt": 1676531580,
       "precipitation": 0
     },
     {
       "dt": 1676531640,
       "precipitation": 0
     },
     {
       "dt": 1676531700,
       "precipitation": 0
     },
     {
       "dt": 1676531760,
       "precipitation": 0
     },
     {
       "dt": 1676531820,
       "precipitation": 0
     },
     {
       "dt": 1676531880,
       "precipitation": 0
     },
     {
       "dt": 1676531940,
       "precipitation": 0
     },
     {
       "dt": 1676532000,
       "precipitation": 0
     },
     {
       "dt": 1676532060,
       "precipitation": 0
     },
     {
       "dt": 1676532120,
       "precipitation": 0
     },
     {
       "dt": 1676532180,
       "precipitation": 0
     },
     {
       "dt": 1676532240,
       "precipitation": 0
     },
     {
       "dt": 1676532300,
       "precipitation": 0
     },
     {
       "dt": 1676532360,
       "precipitation": 0
     },
     {
       "dt": 1676532420,
       "precipitation": 0
     },
     {
       "dt": 1676532480,
       "precipitation": 0
     },
     {
       "dt": 1676532540,
       "precipitation": 0
     },
     {
       "dt": 1676532600,
       "precipitation": 0
     },
     {
       "dt": 1676532660,
       "precipitation": 0
     },
     {
       "dt": 1676532720,
       "precipitation": 0
     },
     {
       "dt": 1676532780,
       "precipitation": 0
     },
     {
       "dt": 1676532840,
       "precipitation": 0
     },
     {
       "dt": 1676532900,
       "precipitation": 0
     },
     {
       "dt": 1676532960,
       "precipitation": 0
     },
     {
       "dt": 1676533020,
       "precipitation": 0
     },
     {
       "dt": 1676533080,
       "precipitation": 0
     },
     {
       "dt": 1676533140,
       "precipitation": 0
     },
     {
       "dt": 1676533200,
       "precipitation": 0
     },
     {
       "dt": 1676533260,
       "precipitation": 0
     },
     {
       "dt": 1676533320,
       "precipitation": 0
     },
     {
       "dt": 1676533380,
       "precipitation": 0
     },
     {
       "dt": 1676533440,
       "precipitation": 0
     },
     {
       "dt": 1676533500,
       "precipitation": 0
     },
     {
       "dt": 1676533560,
       "precipitation": 0
     },
     {
       "dt": 1676533620,
       "precipitation": 0
     },
     {
       "dt": 1676533680,
       "precipitation": 0
     },
     {
       "dt": 1676533740,
       "precipitation": 0
     },
     {
       "dt": 1676533800,
       "precipitation": 0
     },
     {
       "dt": 1676533860,
       "precipitation": 0
     },
     {
       "dt": 1676533920,
       "precipitation": 0
     },
     {
       "dt": 1676533980,
       "precipitation": 0
     },
     {
       "dt": 1676534040,
       "precipitation": 0
     },
     {
       "dt": 1676534100,
       "precipitation": 0
     },
     {
       "dt": 1676534160,
       "precipitation": 0
     },
     {
       "dt": 1676534220,
       "precipitation": 0
     },
     {
       "dt": 1676534280,
       "precipitation": 0
     },
     {
       "dt": 1676534340,
       "precipitation": 0
     },
     {
       "dt": 1676534400,
       "precipitation": 0
     },
     {
       "dt": 1676534460,
       "precipitation": 0
     }
   ],
   "hourly": [
     {
       "dt": 1676530800,
       "temp": 294.26,
       "feels_like": 294.7,
       "pressure": 1006,
       "humidity": 87,
       "dew_point": 292.01,
       "uvi": 0,
       "clouds": 75,
       "visibility": 10000,
       "wind_speed": 5.6,
       "wind_deg": 185,
       "wind_gust": 14.26,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04n"
         }
       ],
       "pop": 0.74
     },
     {
       "dt": 1676534400,
       "temp": 293.99,
       "feels_like": 294.45,
       "pressure": 1006,
       "humidity": 89,
       "dew_point": 292.11,
       "uvi": 0,
       "clouds": 75,
       "visibility": 10000,
       "wind_speed": 6,
       "wind_deg": 186,
       "wind_gust": 14.34,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04n"
         }
       ],
       "pop": 0.88
     },
     {
       "dt": 1676538000,
       "temp": 293.74,
       "feels_like": 294.18,
       "pressure": 1006,
       "humidity": 89,
       "dew_point": 291.86,
       "uvi": 0,
       "clouds": 79,
       "visibility": 10000,
       "wind_speed": 6.53,
       "wind_deg": 206,
       "wind_gust": 13.39,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04n"
         }
       ],
       "pop": 0.8
     },
     {
       "dt": 1676541600,
       "temp": 293.05,
       "feels_like": 293.37,
       "pressure": 1007,
       "humidity": 87,
       "dew_point": 290.82,
       "uvi": 0,
       "clouds": 83,
       "visibility": 10000,
       "wind_speed": 6.55,
       "wind_deg": 240,
       "wind_gust": 12.22,
       "weather": [
         {
           "id": 501,
           "main": "Rain",
           "description": "moderate rain",
           "icon": "10n"
         }
       ],
       "pop": 1,
       "rain": {
         "1h": 1.26
       }
     },
     {
       "dt": 1676545200,
       "temp": 288.98,
       "feels_like": 288.99,
       "pressure": 1008,
       "humidity": 91,
       "dew_point": 287.51,
       "uvi": 0,
       "clouds": 87,
       "visibility": 10000,
       "wind_speed": 6.66,
       "wind_deg": 278,
       "wind_gust": 11.83,
       "weather": [
         {
           "id": 500,
           "main": "Rain",
           "description": "light rain",
           "icon": "10n"
         }
       ],
       "pop": 1,
       "rain": {
         "1h": 0.11
       }
     },
     {
       "dt": 1676548800,
       "temp": 284.4,
       "feels_like": 283.88,
       "pressure": 1011,
       "humidity": 88,
       "dew_point": 282.57,
       "uvi": 0,
       "clouds": 91,
       "visibility": 10000,
       "wind_speed": 6.57,
       "wind_deg": 292,
       "wind_gust": 13.9,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0.8
     },
     {
       "dt": 1676552400,
       "temp": 282.82,
       "feels_like": 279.84,
       "pressure": 1012,
       "humidity": 86,
       "dew_point": 280.66,
       "uvi": 0,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 6.42,
       "wind_deg": 302,
       "wind_gust": 14.13,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0.01
     },
     {
       "dt": 1676556000,
       "temp": 281.7,
       "feels_like": 278.43,
       "pressure": 1015,
       "humidity": 83,
       "dew_point": 279.05,
       "uvi": 0.12,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 6.37,
       "wind_deg": 298,
       "wind_gust": 12.86,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0.01
     },
     {
       "dt": 1676559600,
       "temp": 280.67,
       "feels_like": 276.98,
       "pressure": 1016,
       "humidity": 82,
       "dew_point": 277.8,
       "uvi": 0.38,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 6.75,
       "wind_deg": 303,
       "wind_gust": 13.18,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676563200,
       "temp": 280.2,
       "feels_like": 276.31,
       "pressure": 1016,
       "humidity": 79,
       "dew_point": 276.87,
       "uvi": 1.74,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 6.95,
       "wind_deg": 307,
       "wind_gust": 13.6,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676566800,
       "temp": 280.59,
       "feels_like": 276.73,
       "pressure": 1017,
       "humidity": 71,
       "dew_point": 275.83,
       "uvi": 2.58,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 7.23,
       "wind_deg": 306,
       "wind_gust": 11.67,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676570400,
       "temp": 279.64,
       "feels_like": 275.64,
       "pressure": 1018,
       "humidity": 71,
       "dew_point": 274.75,
       "uvi": 3.05,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 6.83,
       "wind_deg": 308,
       "wind_gust": 11.23,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676574000,
       "temp": 280.63,
       "feels_like": 276.75,
       "pressure": 1018,
       "humidity": 62,
       "dew_point": 273.95,
       "uvi": 4.76,
       "clouds": 96,
       "visibility": 10000,
       "wind_speed": 7.32,
       "wind_deg": 310,
       "wind_gust": 11.12,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676577600,
       "temp": 279.11,
       "feels_like": 274.96,
       "pressure": 1018,
       "humidity": 63,
       "dew_point": 272.58,
       "uvi": 3.7,
       "clouds": 98,
       "visibility": 10000,
       "wind_speed": 6.83,
       "wind_deg": 311,
       "wind_gust": 11.09,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676581200,
       "temp": 279.96,
       "feels_like": 276.5,
       "pressure": 1018,
       "humidity": 59,
       "dew_point": 272.46,
       "uvi": 2.22,
       "clouds": 99,
       "visibility": 10000,
       "wind_speed": 5.6,
       "wind_deg": 310,
       "wind_gust": 10.51,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676584800,
       "temp": 282.14,
       "feels_like": 279.09,
       "pressure": 1018,
       "humidity": 52,
       "dew_point": 272.98,
       "uvi": 0.94,
       "clouds": 97,
       "visibility": 10000,
       "wind_speed": 6.05,
       "wind_deg": 306,
       "wind_gust": 9.76,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676588400,
       "temp": 281.3,
       "feels_like": 278.07,
       "pressure": 1019,
       "humidity": 55,
       "dew_point": 272.84,
       "uvi": 0.22,
       "clouds": 97,
       "visibility": 10000,
       "wind_speed": 5.92,
       "wind_deg": 308,
       "wind_gust": 9.73,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676592000,
       "temp": 279.51,
       "feels_like": 275.82,
       "pressure": 1020,
       "humidity": 54,
       "dew_point": 271.05,
       "uvi": 0,
       "clouds": 97,
       "visibility": 10000,
       "wind_speed": 5.88,
       "wind_deg": 309,
       "wind_gust": 10.51,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676595600,
       "temp": 278.26,
       "feels_like": 274.15,
       "pressure": 1021,
       "humidity": 55,
       "dew_point": 270.11,
       "uvi": 0,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 6.08,
       "wind_deg": 315,
       "wind_gust": 10.89,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676599200,
       "temp": 277.26,
       "feels_like": 272.82,
       "pressure": 1022,
       "humidity": 55,
       "dew_point": 269.22,
       "uvi": 0,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 6.22,
       "wind_deg": 319,
       "wind_gust": 11.39,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676602800,
       "temp": 276.49,
       "feels_like": 272.02,
       "pressure": 1023,
       "humidity": 56,
       "dew_point": 268.69,
       "uvi": 0,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 5.81,
       "wind_deg": 318,
       "wind_gust": 11.04,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676606400,
       "temp": 275.73,
       "feels_like": 271.26,
       "pressure": 1024,
       "humidity": 58,
       "dew_point": 268.35,
       "uvi": 0,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 5.4,
       "wind_deg": 319,
       "wind_gust": 11.09,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676610000,
       "temp": 275.19,
       "feels_like": 270.59,
       "pressure": 1024,
       "humidity": 59,
       "dew_point": 268.06,
       "uvi": 0,
       "clouds": 91,
       "visibility": 10000,
       "wind_speed": 5.37,
       "wind_deg": 318,
       "wind_gust": 10.72,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676613600,
       "temp": 274.51,
       "feels_like": 269.63,
       "pressure": 1025,
       "humidity": 61,
       "dew_point": 267.84,
       "uvi": 0,
       "clouds": 76,
       "visibility": 10000,
       "wind_speed": 5.58,
       "wind_deg": 321,
       "wind_gust": 10.76,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676617200,
       "temp": 273.77,
       "feels_like": 268.59,
       "pressure": 1026,
       "humidity": 63,
       "dew_point": 267.55,
       "uvi": 0,
       "clouds": 0,
       "visibility": 10000,
       "wind_speed": 5.78,
       "wind_deg": 323,
       "wind_gust": 11.09,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676620800,
       "temp": 272.98,
       "feels_like": 267.76,
       "pressure": 1027,
       "humidity": 65,
       "dew_point": 267.38,
       "uvi": 0,
       "clouds": 0,
       "visibility": 10000,
       "wind_speed": 5.47,
       "wind_deg": 325,
       "wind_gust": 11,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676624400,
       "temp": 272.35,
       "feels_like": 267.26,
       "pressure": 1027,
       "humidity": 69,
       "dew_point": 267.33,
       "uvi": 0,
       "clouds": 1,
       "visibility": 10000,
       "wind_speed": 4.96,
       "wind_deg": 326,
       "wind_gust": 10.62,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676628000,
       "temp": 272,
       "feels_like": 266.84,
       "pressure": 1028,
       "humidity": 71,
       "dew_point": 267.44,
       "uvi": 0,
       "clouds": 2,
       "visibility": 10000,
       "wind_speed": 4.93,
       "wind_deg": 326,
       "wind_gust": 10.88,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676631600,
       "temp": 271.86,
       "feels_like": 266.82,
       "pressure": 1028,
       "humidity": 72,
       "dew_point": 267.63,
       "uvi": 0,
       "clouds": 3,
       "visibility": 10000,
       "wind_speed": 4.68,
       "wind_deg": 330,
       "wind_gust": 10.8,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676635200,
       "temp": 271.78,
       "feels_like": 266.94,
       "pressure": 1029,
       "humidity": 74,
       "dew_point": 267.73,
       "uvi": 0,
       "clouds": 3,
       "visibility": 10000,
       "wind_speed": 4.34,
       "wind_deg": 333,
       "wind_gust": 10.34,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676638800,
       "temp": 271.71,
       "feels_like": 267.14,
       "pressure": 1030,
       "humidity": 75,
       "dew_point": 267.85,
       "uvi": 0,
       "clouds": 6,
       "visibility": 10000,
       "wind_speed": 3.94,
       "wind_deg": 334,
       "wind_gust": 9.9,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676642400,
       "temp": 272.75,
       "feels_like": 268.21,
       "pressure": 1031,
       "humidity": 70,
       "dew_point": 267.93,
       "uvi": 0.45,
       "clouds": 6,
       "visibility": 10000,
       "wind_speed": 4.24,
       "wind_deg": 335,
       "wind_gust": 9.97,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676646000,
       "temp": 274.7,
       "feels_like": 270.39,
       "pressure": 1032,
       "humidity": 61,
       "dew_point": 268.03,
       "uvi": 1.43,
       "clouds": 6,
       "visibility": 10000,
       "wind_speed": 4.62,
       "wind_deg": 353,
       "wind_gust": 7.9,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676649600,
       "temp": 276.74,
       "feels_like": 273.09,
       "pressure": 1032,
       "humidity": 55,
       "dew_point": 268.57,
       "uvi": 2.86,
       "clouds": 6,
       "visibility": 10000,
       "wind_speed": 4.31,
       "wind_deg": 360,
       "wind_gust": 6.63,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676653200,
       "temp": 278.66,
       "feels_like": 275.74,
       "pressure": 1032,
       "humidity": 50,
       "dew_point": 269.02,
       "uvi": 4.24,
       "clouds": 6,
       "visibility": 10000,
       "wind_speed": 3.82,
       "wind_deg": 3,
       "wind_gust": 5.72,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676656800,
       "temp": 280.34,
       "feels_like": 278.02,
       "pressure": 1032,
       "humidity": 45,
       "dew_point": 269.21,
       "uvi": 5,
       "clouds": 5,
       "visibility": 10000,
       "wind_speed": 3.42,
       "wind_deg": 6,
       "wind_gust": 5.27,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676660400,
       "temp": 281.6,
       "feels_like": 279.78,
       "pressure": 1031,
       "humidity": 41,
       "dew_point": 269.23,
       "uvi": 4.93,
       "clouds": 0,
       "visibility": 10000,
       "wind_speed": 3.03,
       "wind_deg": 7,
       "wind_gust": 4.68,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676664000,
       "temp": 282.39,
       "feels_like": 280.94,
       "pressure": 1030,
       "humidity": 38,
       "dew_point": 269.03,
       "uvi": 3.84,
       "clouds": 0,
       "visibility": 10000,
       "wind_speed": 2.7,
       "wind_deg": 5,
       "wind_gust": 4.45,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676667600,
       "temp": 282.82,
       "feels_like": 281.59,
       "pressure": 1030,
       "humidity": 37,
       "dew_point": 268.92,
       "uvi": 2.31,
       "clouds": 0,
       "visibility": 10000,
       "wind_speed": 2.49,
       "wind_deg": 3,
       "wind_gust": 4.45,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676671200,
       "temp": 282.86,
       "feels_like": 281.94,
       "pressure": 1030,
       "humidity": 36,
       "dew_point": 268.74,
       "uvi": 1.01,
       "clouds": 1,
       "visibility": 10000,
       "wind_speed": 2.08,
       "wind_deg": 358,
       "wind_gust": 3.95,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676674800,
       "temp": 282.31,
       "feels_like": 282.31,
       "pressure": 1030,
       "humidity": 49,
       "dew_point": 272.18,
       "uvi": 0.24,
       "clouds": 1,
       "visibility": 10000,
       "wind_speed": 1.2,
       "wind_deg": 2,
       "wind_gust": 1.84,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676678400,
       "temp": 278.86,
       "feels_like": 278.86,
       "pressure": 1030,
       "humidity": 50,
       "dew_point": 269.23,
       "uvi": 0,
       "clouds": 1,
       "visibility": 10000,
       "wind_speed": 0.57,
       "wind_deg": 34,
       "wind_gust": 0.69,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676682000,
       "temp": 277.76,
       "feels_like": 277.76,
       "pressure": 1030,
       "humidity": 52,
       "dew_point": 268.83,
       "uvi": 0,
       "clouds": 0,
       "visibility": 10000,
       "wind_speed": 0.36,
       "wind_deg": 106,
       "wind_gust": 0.64,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676685600,
       "temp": 277.02,
       "feels_like": 277.02,
       "pressure": 1031,
       "humidity": 55,
       "dew_point": 268.8,
       "uvi": 0,
       "clouds": 0,
       "visibility": 10000,
       "wind_speed": 0.26,
       "wind_deg": 144,
       "wind_gust": 0.69,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676689200,
       "temp": 276.34,
       "feels_like": 276.34,
       "pressure": 1032,
       "humidity": 58,
       "dew_point": 268.91,
       "uvi": 0,
       "clouds": 0,
       "visibility": 10000,
       "wind_speed": 0.39,
       "wind_deg": 227,
       "wind_gust": 0.56,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676692800,
       "temp": 275.8,
       "feels_like": 275.8,
       "pressure": 1032,
       "humidity": 61,
       "dew_point": 269.02,
       "uvi": 0,
       "clouds": 1,
       "visibility": 10000,
       "wind_speed": 0.85,
       "wind_deg": 241,
       "wind_gust": 0.92,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676696400,
       "temp": 275.31,
       "feels_like": 275.31,
       "pressure": 1032,
       "humidity": 64,
       "dew_point": 269.16,
       "uvi": 0,
       "clouds": 2,
       "visibility": 10000,
       "wind_speed": 0.45,
       "wind_deg": 217,
       "wind_gust": 0.5,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1676700000,
       "temp": 275.01,
       "feels_like": 275.01,
       "pressure": 1032,
       "humidity": 65,
       "dew_point": 269.21,
       "uvi": 0,
       "clouds": 6,
       "visibility": 10000,
       "wind_speed": 1.16,
       "wind_deg": 186,
       "wind_gust": 1.18,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01n"
         }
       ],
       "pop": 0
     }
   ],
   "daily": [
     {
       "dt": 1676570400,
       "sunrise": 1676552371,
       "sunset": 1676592075,
       "moonrise": 1676542020,
       "moonset": 1676576940,
       "moon_phase": 0.86,
       "temp": {
         "day": 279.64,
         "min": 275.19,
         "max": 294.26,
         "night": 275.19,
         "eve": 279.51,
         "morn": 284.4
       },
       "feels_like": {
         "day": 275.64,
         "night": 270.59,
         "eve": 275.82,
         "morn": 283.88
       },
       "pressure": 1018,
       "humidity": 71,
       "dew_point": 274.75,
       "wind_speed": 7.32,
       "wind_deg": 310,
       "wind_gust": 14.34,
       "weather": [
         {
           "id": 501,
           "main": "Rain",
           "description": "moderate rain",
           "icon": "10d"
         }
       ],
       "clouds": 100,
       "pop": 1,
       "rain": 1.47,
       "uvi": 4.76
     },
     {
       "dt": 1676656800,
       "sunrise": 1676638709,
       "sunset": 1676678529,
       "moonrise": 1676632200,
       "moonset": 1676667600,
       "moon_phase": 0.9,
       "temp": {
         "day": 280.34,
         "min": 271.71,
         "max": 282.86,
         "night": 275.31,
         "eve": 278.86,
         "morn": 271.78
       },
       "feels_like": {
         "day": 278.02,
         "night": 275.31,
         "eve": 278.86,
         "morn": 266.94
       },
       "pressure": 1032,
       "humidity": 45,
       "dew_point": 269.21,
       "wind_speed": 5.78,
       "wind_deg": 323,
       "wind_gust": 11.09,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "clouds": 5,
       "pop": 0,
       "uvi": 5
     },
     {
       "dt": 1676743200,
       "sunrise": 1676725047,
       "sunset": 1676764983,
       "moonrise": 1676721840,
       "moonset": 1676758560,
       "moon_phase": 0.94,
       "temp": {
         "day": 280.35,
         "min": 273.04,
         "max": 282.94,
         "night": 278.35,
         "eve": 280.11,
         "morn": 273.7
       },
       "feels_like": {
         "day": 278.18,
         "night": 276.06,
         "eve": 278.13,
         "morn": 271.27
       },
       "pressure": 1031,
       "humidity": 54,
       "dew_point": 271.62,
       "wind_speed": 3.92,
       "wind_deg": 149,
       "wind_gust": 6.9,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04d"
         }
       ],
       "clouds": 76,
       "pop": 0,
       "uvi": 4.4
     },
     {
       "dt": 1676829600,
       "sunrise": 1676811383,
       "sunset": 1676851437,
       "moonrise": 1676810940,
       "moonset": 1676849520,
       "moon_phase": 0.98,
       "temp": {
         "day": 289.97,
         "min": 277.49,
         "max": 291.19,
         "night": 286.17,
         "eve": 287.54,
         "morn": 277.57
       },
       "feels_like": {
         "day": 289.22,
         "night": 285.72,
         "eve": 286.99,
         "morn": 274.65
       },
       "pressure": 1019,
       "humidity": 58,
       "dew_point": 281.74,
       "wind_speed": 6.22,
       "wind_deg": 231,
       "wind_gust": 14.2,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04d"
         }
       ],
       "clouds": 84,
       "pop": 0,
       "uvi": 4.99
     },
     {
       "dt": 1676916000,
       "sunrise": 1676897718,
       "sunset": 1676937890,
       "moonrise": 1676899680,
       "moonset": 1676940360,
       "moon_phase": 0,
       "temp": {
         "day": 294,
         "min": 286.99,
         "max": 295.91,
         "night": 291.14,
         "eve": 291.46,
         "morn": 287.59
       },
       "feels_like": {
         "day": 293.5,
         "night": 290.82,
         "eve": 291.17,
         "morn": 287.23
       },
       "pressure": 1012,
       "humidity": 52,
       "dew_point": 283.91,
       "wind_speed": 6.66,
       "wind_deg": 220,
       "wind_gust": 18.04,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04d"
         }
       ],
       "clouds": 72,
       "pop": 0,
       "uvi": 5
     },
     {
       "dt": 1677002400,
       "sunrise": 1676984053,
       "sunset": 1677024343,
       "moonrise": 1676988120,
       "moonset": 1677030960,
       "moon_phase": 0.06,
       "temp": {
         "day": 295.99,
         "min": 292.16,
         "max": 297.62,
         "night": 293.6,
         "eve": 294.06,
         "morn": 292.16
       },
       "feels_like": {
         "day": 296.26,
         "night": 293.87,
         "eve": 294.27,
         "morn": 292.47
       },
       "pressure": 1007,
       "humidity": 74,
       "dew_point": 291.27,
       "wind_speed": 8.54,
       "wind_deg": 215,
       "wind_gust": 17.86,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "clouds": 97,
       "pop": 0.06,
       "uvi": 5
     },
     {
       "dt": 1677088800,
       "sunrise": 1677070386,
       "sunset": 1677110795,
       "moonrise": 1677076380,
       "moonset": 1677121440,
       "moon_phase": 0.09,
       "temp": {
         "day": 287.62,
         "min": 287.62,
         "max": 293.35,
         "night": 289.3,
         "eve": 291.92,
         "morn": 292.48
       },
       "feels_like": {
         "day": 287.37,
         "night": 289.01,
         "eve": 291.6,
         "morn": 292.79
       },
       "pressure": 1005,
       "humidity": 86,
       "dew_point": 285.43,
       "wind_speed": 7.85,
       "wind_deg": 162,
       "wind_gust": 17.14,
       "weather": [
         {
           "id": 502,
           "main": "Rain",
           "description": "heavy intensity rain",
           "icon": "10d"
         }
       ],
       "clouds": 100,
       "pop": 1,
       "rain": 24.45,
       "uvi": 5
     },
     {
       "dt": 1677175200,
       "sunrise": 1677156719,
       "sunset": 1677197247,
       "moonrise": 1677164580,
       "moonset": 1677211800,
       "moon_phase": 0.13,
       "temp": {
         "day": 293.95,
         "min": 284.04,
         "max": 294.41,
         "night": 284.04,
         "eve": 288.4,
         "morn": 286.37
       },
       "feels_like": {
         "day": 293.29,
         "night": 282.65,
         "eve": 287.55,
         "morn": 285.73
       },
       "pressure": 1019,
       "humidity": 46,
       "dew_point": 282.02,
       "wind_speed": 5.83,
       "wind_deg": 13,
       "wind_gust": 17.24,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "clouds": 0,
       "pop": 0,
       "uvi": 5
     }
   ]
 }
 */
