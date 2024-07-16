//
//  SplashView.swift
//  CapitalsWeather
//
//  Created by julie ryan on 16/07/2024.
//

import SwiftUI

struct SplashScreen: View {
    @State var showSplashcreen = true
    var heigthSize = UIScreen.main.bounds.height / 3
    var body: some View {
        if showSplashcreen {
            ZStack {
                Color.teal
                VStack {
                    Spacer()
                    Text("Weather for each capital").font(.title).foregroundStyle(.white)
                    
                    Image(systemName: "globe.desk.fill").resizable().scaledToFit().foregroundStyle(.white)
                 
                    Spacer()
                   
                    Spacer()
                    Button("Passer Intro") {
                        showSplashcreen = false
                    }.padding().foregroundStyle(.white)
                    Spacer()
                }
            }
         
         .onAppear {
                          DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                              showSplashcreen = false
                          }
                      }

        }else {
            WeatherCitiesView()
        }
    }
}

#Preview {
    SplashScreen()
}
