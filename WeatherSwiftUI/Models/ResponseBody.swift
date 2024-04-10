//
//  ResponseBody.swift
//  WeatherApp
//
//  Created by Эмилия on 09.04.2024.
//

import Foundation

struct ResponseBody: Decodable {
    var coord: CoordinatesResponse
    var weather: [WeatherResponse]
    var main: MainResponse
    var name: String
    var wind: WindResponse
    var sys: SunResponse
    
    struct CoordinatesResponse: Decodable {
        var lon: Double
        var lat: Double
    }
    
    struct WeatherResponse: Decodable {
        var id: Int
        var main: String
        var description: String
        var icon: String
    }
    
    struct MainResponse: Decodable {
        var temp: Double
        var feels_like: Double
        var temp_min: Double
        var temp_max: Double
        var pressure: Double
        var humidity: Double
    }
    
    struct WindResponse: Decodable {
        var speed: Double
        var deg: Double
    }
    
    struct SunResponse: Decodable {
        var sunrise: Double
        var sunset: Double
    }
}

extension ResponseBody.MainResponse {
    var feelsLike: Double { return feels_like }
    var tempMin: Double { return temp_min }
    var tempMax: Double { return temp_max }
}

extension ResponseBody.SunResponse {
    var sunriseDate: Date {
        NSDate(timeIntervalSince1970: sunrise) as Date
    }
    var sunsetDate: Date {
        NSDate(timeIntervalSince1970: sunset) as Date
    }
}
