//
//  WeatherCellModelView.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import SwiftUI

struct WindSpeedModelView: View {
    @StateObject var windSpeedReader = WindSpeedReader()
    @StateObject var thermometer = Thermometer()
    @Binding var city : City
    var body: some View {
      
            HStack {
         
                if let speed = windSpeedReader.windSpeed {
                    VStack (alignment: .leading)  {
                        Text("Vitesse du vent")
                        Text(" \(String(format: "%.2f", speed)) m/s")
                    }
                
                } else {
                    Text("chargement")
                }
                
                if let temperature = thermometer.temperature {
                    VStack {
                        Text("Temperature").font(.callout)
                        Text("\(String(format: "%.2f", temperature))c°")
                    }
                  
                } else {
                    Text("chargement")
                }
            }.onAppear {
            windSpeedReader.getWindSpeed(city: city)
            thermometer.getTemperature(city: city)
            
        }
    }
}

#Preview {
    WindSpeedModelView(city: .constant(capitals[0]))
}
