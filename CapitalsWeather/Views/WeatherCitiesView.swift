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
    @StateObject var filter = FilterCityTool(searchLetter: "")
    

    @StateObject var imageLoader = ImageLoader()
    @State var searchLetter = ""
    @State var selectedCityIndex: Int?
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Villes commencant par...", text: $searchLetter)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
          
                Text(filter.messageError)
                             .foregroundColor(.red)
                             .padding(.horizontal)
                
                Button(action: {
                    filter.messageError = ""
                    filter.searchLetter = searchLetter
                
                }, label: {
                    Text("Chercher selon la premiere lettre")
                 
                })
                .padding(.horizontal)
                
                ScrollView {
                    ForEach(filter.filterCities()) { capital in
                        NavigationLink(destination: WeatherCellModelView(city: capital)) {
                            CityCellView(city: capital)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                              
                        }
                    }
                }
            }
            .navigationTitle("Capitales")
        }
    }
}


#Preview {
    WeatherCitiesView()
}

