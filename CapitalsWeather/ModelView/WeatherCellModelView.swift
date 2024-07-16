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
    var city : City
    var body: some View {
     
            VStack {
      
                PresentationCityView(city: city)
              
        
                ImageCountryView(city: city)
                
                    TemperatureModelView(thermometer: thermometer, city: city)
                  
              
                Spacer()
                Spacer()
              
            }
                .padding()
            
            .onAppear {
            windSpeedReader.getWindSpeed(city: city)
            thermometer.getTemperature(city: city)
                
            
        }
    }
}

#Preview {
    WeatherCellModelView(city: capitals[0])
}
