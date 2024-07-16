//
//  TemperatureModelView.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import SwiftUI

struct TemperatureModelView: View {
    @StateObject var windSpeedReader = WindSpeedReader()
    @StateObject var thermometer = Thermometer()
    var city: City
    var body: some View {
        HStack {
            Spacer()
            VStack {
                if let temperature = thermometer.temperature {
                    VStack {
                        Text("Temperature").font(.callout)
                        Text("\(String(format: "%.2f", temperature)) °C")
                    }.frame(maxWidth: .infinity, alignment: .leading)
                  
                } else {
                    Text("chargement...")
                }
                Text("").font(.title)
                if let humidity = thermometer.humidity {
                    VStack {
                        Text("Humidite").font(.callout)
                        Text("\(String(format: "%.2f", humidity)) %")
                    } .frame(maxWidth: .infinity, alignment: .leading)
                  
                } else {
                    Text("chargement...")
                }
            }
            Spacer()
            
            VStack {
                if let pressure = thermometer.pressure {
                    VStack {
                        Text("Pression").font(.callout)
                        Text("\(String(format: "%.2f", pressure)) Pa")
                    }
                   .frame(maxWidth: .infinity, alignment: .leading)
                } else {
                    Text("chargement...")
                }
                Text("").font(.title)
                if let speed = windSpeedReader.windSpeed {
                    VStack (alignment: .leading)  {
                        Text("Vitesse du vent")
                        Text(" \(String(format: "%.2f", speed)) m/s")
                    }.frame(maxWidth: .infinity, alignment: .leading)
                
                } else {
                    Text("chargement")
                }
                
            }
         
         Spacer()
       
        }
        .onAppear {
            thermometer.getTemperature(city: city)
            windSpeedReader.getWindSpeed(city: city)
        }
        .onChange(of: city) { oldCity, newCity in
            thermometer.getTemperature(city: newCity)
        }
        .onReceive(thermometer.$temperature) { newTemperature in
            print("Nouvelle température reçue : \(newTemperature ?? 0.0) °C")
        }
    }
}


#Preview {
    TemperatureModelView(city: capitals[0])
}
