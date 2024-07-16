//
//  WeatherCellModelView.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import SwiftUI

struct WindSpeedModelView: View {
    @StateObject var windSpeedReader = WindSpeedReader()


   var city : City
    var body: some View {
      
            VStack {
         
                if let speed = windSpeedReader.windSpeed {
                    VStack (alignment: .leading)  {
                        Text("Vitesse du vent")
                        Text(" \(String(format: "%.2f", speed)) m/s")
                    }
                
                } else {
                    Text("chargement")
                }
                
                
          
                
                
                
            }.onAppear {
            windSpeedReader.getWindSpeed(city: city)
   

            
        }
    }
}

#Preview {
    WindSpeedModelView(city: capitals[0])
}
