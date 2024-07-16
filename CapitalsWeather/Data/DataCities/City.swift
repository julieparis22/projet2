//
//  City.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import Foundation
import UIKit
import SwiftUI

struct City : Identifiable, Hashable, Equatable {
    
    var id = UUID()
    var name : String
    var flag : String
    var color : Color
    var country : String
    var description : String
    

    var latitude : Double
    var longitude : Double
    
    init(name: String, flag: String, color: Color, country: String, description: String, latitude: Double, longitude: Double) {
    
        self.name = name
        self.flag = flag
        self.color = color
        self.country = country
        self.description = description
        self.latitude = latitude
        self.longitude = longitude
    }
    
    static func == (lhs: City, rhs: City) -> Bool {
        return lhs.id == rhs.id // Comparez ici les propriétés pertinentes pour votre cas
    }


 
    
   
}
