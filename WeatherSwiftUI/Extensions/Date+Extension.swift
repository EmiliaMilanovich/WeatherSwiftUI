//
//  Date+Extension.swift
//  WeatherSwiftUI
//
//  Created by Эмилия on 10.04.2024.
//

import Foundation

extension Date {
    func actualTime(sunrise: Date, sunset: Date) -> Bool {
        let date = Date()
        let previousMidnight = Calendar.current.startOfDay(for: date)
        if date >= previousMidnight && date < sunrise || date > sunset {
            return false
        } else {
            return true
        }
    }
}
