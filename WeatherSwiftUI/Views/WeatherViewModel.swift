//
//  WeatherViewModel.swift
//  WeatherSwiftUI
//
//  Created by Эмилия on 10.04.2024.
//

import Foundation

final class WeatherViewModel: ObservableObject {
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
