//
//  WeatherCitiesView.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import SwiftUI

struct WeatherCitiesView: View {
    @StateObject var windSpeedReader = WindSpeedReader()
    @StateObject var thermometer = Thermometer()
    
    @State var city = capitals[0]
 
    @State  var selectedCityIndex: Int?
    var body: some View {
    
        NavigationView {
       //         List {                 }
            ScrollView {
                ForEach(capitals) { capital in
                    NavigationLink(destination: WeatherCellModelView(city: capital)) {
                        Spacer()
                        CityCellView(city: capital)  .frame(maxWidth: .infinity, alignment: .leading)
                            .padding().foregroundStyle(.black)
                    }

     

                }
                
            }
                   
                    
        }.navigationTitle("Capitals")
      
    }
}


#Preview {
    WeatherCitiesView()
}
