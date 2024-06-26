//
//  WelcomeView.swift
//  WeatherSwiftUI
//
//  Created by Эмилия on 09.04.2024.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                
                Text("Добро пожаловать в приложение Weather!")
                    .bold()
                    .font(.title)
                    .shadow(radius: 40)
                
                Text("Пожалуйста, разрешите доступ к вашей геолокации, чтобы мы могли вам показать текущую погоду")
                    .padding()
                    .shadow(radius: 40)
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            .opacity(30)
            .shadow(radius: 30)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
