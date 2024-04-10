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
}
