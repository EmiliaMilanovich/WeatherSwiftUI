//
//  Double+Extension.swift
//  WeatherSwiftUI
//
//  Created by Эмилия on 09.04.2024.
//

import Foundation

extension Double {
    func roundDouble() -> String {
        String(format: "%.0f", self)
    }
}
