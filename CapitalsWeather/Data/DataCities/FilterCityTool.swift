//
//  FilterCityTool.swift
//  CapitalsWeather
//
//  Created by julie ryan on 16/07/2024.
//

import Foundation

class FilterCityTool : Identifiable, ObservableObject {
    
    var id = UUID()
 //   var capital : [City] = capitals
    
    @Published var searchLetter :  String
    var messageError = ""
    
    init(searchLetter: String) {
 
        self.searchLetter = searchLetter
   
    }
    
    func isValidSearch() -> Bool {
          return searchLetter.count < 2
      }
     
    
    func filterCities() -> [City] {
        
        guard !searchLetter.isEmpty else {
            return capitals
            }
        
         guard isValidSearch() else {
          messageError = "Please enter juste one letter"
          return []
      }
      
        
        
        
      
            let lowercaseLetter = searchLetter.lowercased()
            
            let filteredCities = capitals.filter { city in
                guard let firstLetter = city.name.first else {
                    return false
                }
                
                let cityFirstLetter = String(firstLetter).lowercased()
                return cityFirstLetter == lowercaseLetter
            }
            
            return filteredCities
        }
        
     
        
      
        
}


