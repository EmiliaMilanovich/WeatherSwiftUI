//
//  WeatherRow.swift
//  WeatherSwiftUI
//
//  Created by Эмилия on 09.04.2024.
//

import SwiftUI

struct WeatherRow: View {
    var logo: String
    var name: String
    var value: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(logo)
                .font(.title2)
                .frame(width: 20, height: 20)
                .padding()
                .background(.cyan)
                .cornerRadius(50)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(name)
                    .font(.caption)
                
                Text(value)
                    .bold()
                    .font(.title)
            }
        }
    }
}

struct WeatherRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRow(logo: "thermometer.high", name: "Feels like", value: "8°")
    }
}
