//
//  City.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import Foundation
import UIKit
import SwiftUI

struct City : Identifiable {
    
    var id = UUID()
    var name : String
    var flag : String
   // var color : Color = .white
   
    

    var latitude : Double
    var longitude : Double
    
    init(name: String, flag: String, latitude: Double, longitude: Double) {

        self.name = name
        self.flag = flag
  
        self.latitude = latitude
        self.longitude = longitude
    }
    
 
    
   
}
