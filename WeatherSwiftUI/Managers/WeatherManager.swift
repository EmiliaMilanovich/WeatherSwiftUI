//
//  WeatherManager.swift
//  WeatherSwiftUI
//
//  Created by Эмилия on 09.04.2024.
//

import Foundation
import CoreLocation

// MARK: - RequestConstants
enum RequestConstants {
    static let baseURL = "https://api.openweathermap.org/data/2.5/weather"
    static let accessToken = "add your token"
}

// MARK: - WeatherManager
class WeatherManager {
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> ResponseBody {
        
        guard let url = URL(string: "\(RequestConstants.baseURL)?lat=\(latitude)&lon=\(longitude)&appid=\(RequestConstants.accessToken)&units=metric") else
        { fatalError("Missing URL") }
                
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error fetching weather data") }
        let decodedData = try JSONDecoder().decode(ResponseBody.self, from: data)
        return decodedData
    }
    
    func isDay(sunrise: Date, sunset: Date) -> Bool {
        if Date().actualTime(sunrise: sunrise, sunset: sunset) {
            return true
        } else {
            return false
        }
    }
    
    func changeImageConditions(condition: String) -> String {
        switch condition.lowercased() {
        case "thunderstorm": return "cloud.bolt.rain"
        case "drizzle": return "cloud.drizzle"
        case "rain": return "cloud.rain"
        case "snow": return "cloud.snow"
        case "clear": return "sun.max"
        case "clouds": return "cloud"
        default: return "smoke"
        }
    }
}
