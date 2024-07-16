//
//  ImageLoader.swift
//  CapitalsWeather
//
//  Created by julie ryan on 16/07/2024.
//

import Foundation
import Foundation
import Combine

class ImageLoader: ObservableObject {
    @Published var imageUrl: String? = nil
    
   
    // access key gwGfWp6w6prbrZBcjKS8Wvpnca_fGtLMjN6KcG10CzQ

    
    func fetchImage(for country: String) {
        let apiKey = "gwGfWp6w6prbrZBcjKS8Wvpnca_fGtLMjN6KcG10CzQ"
        let urlString = "https://api.unsplash.com/search/photos?query=\(country)&client_id=\(apiKey)"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                   let results = json["results"] as? [[String: Any]],
                   let firstResult = results.first,
                   let urls = firstResult["urls"] as? [String: String],
                   let imageUrl = urls["regular"] {
                    DispatchQueue.main.async {
                        self.imageUrl = imageUrl
                    }
                }
            }
        }.resume()
    }
}
