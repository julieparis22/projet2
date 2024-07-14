//
//  Thermometer.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import Foundation

import SwiftUI
import Combine
class Thermometer : ObservableObject {

    
    @Published var temperature: Double?
    @Published var pressure: Double?

    
    func getTemperature(city : City) {

       
        
        
        let longitude : Double = city.longitude

        
        
        let latitude  : Double = city.latitude
        
        let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=-\(longitude)&units=metric&appid=6604c4008ebd86db44f1cc3d685be38a"
     
  
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Temperature.self, from: data) {
                    DispatchQueue.main.async {
                        self.temperature = decodedResponse.main.temp
                
      
                    }
                
                }
            }
            
          
            print("ca a pas marche")
        }.resume()
    }
    
}
