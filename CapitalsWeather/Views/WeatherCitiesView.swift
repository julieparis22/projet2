//
//  WeatherCitiesView.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import SwiftUI

struct WeatherCitiesView: View {
    
@State var capital = capitals[0]
    var body: some View {
        WeatherCitiesView(capital: capital)
    }
}

#Preview {
    WeatherCitiesView()
}
