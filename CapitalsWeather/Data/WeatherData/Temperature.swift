//
//  Temperature.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import Foundation
import Foundation
struct Temperature : Codable {
    struct Main: Codable {
        let temp: Double
  
    }
    let main: Main
}
