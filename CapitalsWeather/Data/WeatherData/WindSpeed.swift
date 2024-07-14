//
//  WindSpeed.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import Foundation


struct WindSpeed : Codable {
    struct Wind: Codable {
       
        let speed : Double
    }
    let wind : Wind
}
