//
//  Index.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import Foundation
import Foundation
import SwiftUI
import Combine


public class Index : ObservableObject {
    
    public static let shared = Index()

      @Published public var index: Int = 0

      private init() {}
    

}
