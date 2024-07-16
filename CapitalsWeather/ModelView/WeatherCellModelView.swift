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
        ZStack {
       
            city.color
            VStack {
                Spacer()
                PresentationCityView(city: city)
                Spacer()
        
         
                    TemperatureModelView(thermometer: thermometer, city: city)
                  
              
                Spacer()
              
                
                
        
            }.foregroundStyle(.white)
                .padding()
            
    
            
        }.onAppear {
            windSpeedReader.getWindSpeed(city: city)
            thermometer.getTemperature(city: city)
            
        }
    }
}

#Preview {
    WeatherCellModelView(city: capitals[0])
}
