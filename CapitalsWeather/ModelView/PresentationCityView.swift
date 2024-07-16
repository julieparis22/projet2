//
//  PresentationCityView.swift
//  CapitalsWeather
//
//  Created by julie ryan on 16/07/2024.
//

import SwiftUI

struct PresentationCityView: View {
    var backGroundFlagSize = UIScreen.main.bounds.height / 10
    var flagSize = UIScreen.main.bounds.width / 4
    var city : City
    var body: some View {
        VStack {
            Text("\(city.name)").font(.title)
            
            ZStack {
                Rectangle().frame(width: flagSize, height: backGroundFlagSize).foregroundStyle(.white)
                Text("\(city.flag)").font(.system(size: flagSize))
            }
            Text("\(city.country)").font(.title)
            ScrollView {
                Text("\(city.description)")
            }
        }
     
    }
}

#Preview {
    PresentationCityView(city: capitals[0])
}
