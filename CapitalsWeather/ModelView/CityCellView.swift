//
//  CityCellView.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import SwiftUI

struct CityCellView: View {
    var city : City
    var body: some View {
        

        
             
                HStack {
                    Text("\(city.name)").fontWeight(.bold)
                
                    ZStack {
                        Circle().frame(width: UIScreen.main.bounds.width / 12).foregroundStyle(.gray)
                        Text("\(city.flag)")
                    }
                    Text("\(city.country)")
                }
                .multilineTextAlignment(.trailing)
                
            
           
        
        
     
    }
}

#Preview {
    CityCellView(city: capitals[0])
}
