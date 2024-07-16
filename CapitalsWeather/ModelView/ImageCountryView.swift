//
//  ImageCountryView.swift
//  CapitalsWeather
//
//  Created by julie ryan on 16/07/2024.
//

import SwiftUI

struct ImageCountryView: View {

        @StateObject private var imageLoader = ImageLoader()
   
    var city : City
    var heigthImage = UIScreen.main.bounds.height / 4
    var widthImage = UIScreen.main.bounds.width / 6
        var body: some View {
            VStack {
                if let imageUrl = imageLoader.imageUrl, let url = URL(string: imageUrl) {
                    AsyncImage(url: url) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(height: heigthImage)
                    .clipped()
                } else {
                    Text("chargement...")
                }
                
         
            
                
            }
            .onAppear {
                imageLoader.fetchImage(for: city.country)
            }
        }
    
}


#Preview {
    ImageCountryView(city: capitals[0])
}


/**
*/
