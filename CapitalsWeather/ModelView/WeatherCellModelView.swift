//
//  WeatherCellModelView.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import SwiftUI

struct WeatherCellModelView: View {
    @StateObject var windSpeedReader = WindSpeedReader()
    @StateObject var thermometer = Thermometer()
    @Binding var city : City
    var body: some View {
        ZStack {
            Color.teal
            HStack {
                Text("\(city.name)").font(.title)
                Text("\(city.flag)")
                if let speed = windSpeedReader.windSpeed {
                    Text("Vitesse du vent : \(String(format: "%.2f", speed)) m/secondes")
                } else {
                    Text("chargement")
                }
                
                if let temperature = thermometer.temperature {
                    Text("Temperature : \(String(format: "%.2f", temperature)) ° Celcius")
                } else {
                    Text("chargement")
                }
            }.foregroundStyle(.white)
            
    
            
        }.onAppear {
            windSpeedReader.getWindSpeed(city: city)
            thermometer.getTemperature(city: city)
            
        }
    }
}

#Preview {
    WeatherCellModelView(city: .constant(capitals[0]))
}
