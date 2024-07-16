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
      
     Text(" ")
    }
}

#Preview {
    WindSpeedModelView(city: capitals[0])
}
/**       VStack {
 
 if let speed = windSpeedReader.windSpeed {
     VStack (alignment: .leading)  {
         Text("Wind")
         Text(" \(String(format: "%.2f", speed)) m/s")
     }
 
 } else {
     Text("loading")
 }
 
 

 
 
 
}.onAppear {
windSpeedReader.getWindSpeed(city: city)



}*/
