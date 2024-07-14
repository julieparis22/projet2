//
//  WindSpeedReader.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import Foundation

import Combine

class WindSpeedReader : ObservableObject {
    @Published var windSpeed: Double?
    
    

    
    func getWindSpeed(city : City) {
        

        
        let longitude : Double = city.longitude

        
        
        let latitude  : Double = city.latitude
        
        let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&units=metric&appid=6604c4008ebd86db44f1cc3d685be38a"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedResponse = try JSONDecoder().decode(WindSpeed.self, from: data)
                    DispatchQueue.main.async {
                        self.windSpeed = decodedResponse.wind.speed
                    }
                } catch {
                    print("Failed to decode JSON: \(error)")
                }
            } else if let error = error {
                print("Request failed with error: \(error)")
            } else {
                print("Unknown error")
            }
        }.resume()
    }
}



