//
//  TestView.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import SwiftUI



struct TestView: View {
    @StateObject var windSpeedReader = WindSpeedReader()
    @StateObject var thermometer = Thermometer()
    var body: some View {
        VStack {
            Text("dans la ville de \(capitals[2].name)").font(.title3)
              
            
            if let speed = windSpeedReader.windSpeed {
                Text("Vitesse du vent : \(String(format: "%.2f", speed)) m/secondes")
            
            } else {
                Text("chargement")
                 
            }
            
            
            //
              
            if let temperature = thermometer.temperature {
        
                Text("Temperature : \(String(format: "%.2f", temperature)) ° Celcius")
            } else {
                Text("chargement")
            }
            
            
          
        }.onAppear {
            windSpeedReader.getWindSpeed(city: capitals[2])
            thermometer.getTemperature(city: capitals[2])
            
        }
    }
}

#Preview {
    TestView()
}
