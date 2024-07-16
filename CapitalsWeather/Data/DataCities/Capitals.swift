//
//  Capitals.swift
//  CapitalsWeather
//
//  Created by julie ryan on 14/07/2024.
//

import Foundation
import UIKit
import SwiftUI
let capitals: [City] = [
    City(name: "Madrid", flag: "🇪🇸", color: .red, country: "Spain", description: "Capitale vibrante de l'Espagne, renommée pour son art, sa cuisine et son ambiance animée.", latitude: 40.4168, longitude: -3.7038),
    City(name: "Paris", flag: "🇫🇷", color: .blue, country: "France", description: "Paris, la Ville Lumière, célèbre pour ses monuments iconiques, sa gastronomie et son charme romantique.", latitude: 48.856613, longitude: 2.352222),
    City(name: "Berlin", flag: "🇩🇪", color: .orange, country: "Germany", description: "Berlin, capitale dynamique de l'Allemagne, allie histoire fascinante, art urbain et vie nocturne éclectique.", latitude: 52.520007, longitude: 13.404954),
    City(name: "Washington, D.C.", flag: "🇺🇸", color: .blue, country: "United States", description: "Washington, D.C., capitale des États-Unis, incarne la démocratie avec ses monuments historiques et ses musées renommés.", latitude: 38.9072, longitude: 77.0369),
    City(name: "Ottawa", flag: "🇨🇦", color: .red, country: "Canada", description: "Ottawa, capitale du Canada, mélange culturel francophone et anglophone, politique et nature.", latitude: 45.4215, longitude: 75.6972),
    City(name: "London", flag: "🇬🇧", color: .blue, country: "United Kingdom", description: "Londres, capitale du Royaume-Uni, mélange d'histoire, de culture et de diversité cosmopolite.", latitude: 51.5074, longitude: 0.1278),
    City(name: "Tokyo", flag: "🇯🇵", color: .red, country: "Japan", description: "Tokyo, capitale du Japon, allie tradition ancienne et modernité avec gratte-ciel, temples et cuisine raffinée.", latitude: 35.6762, longitude: 139.6503),
    City(name: "Canberra", flag: "🇦🇺", color: .green, country: "Australia", description: "Canberra, capitale de l'Australie, art, politique et nature dans une ville planifiée.", latitude: 35.2809, longitude: 149.1300),
    City(name: "Brasília", flag: "🇧🇷", color: .orange, country: "Brazil", description: "Brasília, capitale du Brésil, architecture moderne et rôle politique central.", latitude: -15.8267, longitude: -47.9218),
    City(name: "Moscow", flag: "🇷🇺", color: .blue, country: "Russia", description: "Moscou, capitale de la Russie, histoire riche, architecture grandiose et culture vibrante.", latitude: 55.7558, longitude: 37.6176),
    City(name: "Beijing", flag: "🇨🇳", color: .red, country: "China", description: "Beijing, capitale de la Chine, traditions anciennes et développement moderne.", latitude: 39.9042, longitude: 116.4074),
    City(name: "New Delhi", flag: "🇮🇳", color: .orange, country: "India", description: "New Delhi, capitale de l'Inde, patrimoine historique, temples sacrés et vitalité urbaine.", latitude: 28.6139, longitude: 77.2090),
    City(name: "Cairo", flag: "🇪🇬", color: .red, country: "Egypt", description: "Le Caire, capitale de l'Égypte, pyramides, marché animé et culture vibrante.", latitude: 30.0444, longitude: 31.2357),
    City(name: "Buenos Aires", flag: "🇦🇷", color: .blue, country: "Argentina", description: "Buenos Aires, capitale de l'Argentine, tango, architecture européenne et scène artistique dynamique.", latitude: 34.6037, longitude: 58.3816),
    City(name: "Rome", flag: "🇮🇹", color: .green, country: "Italy", description: "Rome, capitale de l'Italie, ville éternelle avec des ruines antiques, art Renaissance et cuisine délicieuse.", latitude: 41.9028, longitude: 12.4964),
       City(name: "Athens", flag: "🇬🇷", color: .blue, country: "Greece", description: "Athènes, capitale de la Grèce, berceau de la démocratie avec des vestiges antiques et une ambiance méditerranéenne.", latitude: 37.9838, longitude: 23.7275),
       City(name: "Mexico City", flag: "🇲🇽", color: .orange, country: "Mexico", description: "Mexico City, capitale du Mexique, mélange de culture précolombienne, architecture coloniale et vie urbaine animée.", latitude: 19.4326, longitude: -99.1332),
       City(name: "Stockholm", flag: "🇸🇪", color: .blue, country: "Sweden", description: "Stockholm, capitale de la Suède, ville construite sur des îles avec une riche histoire viking, design moderne et nature préservée.", latitude: 59.3293, longitude: 18.0686),
       City(name: "Bangkok", flag: "🇹🇭", color: .red, country: "Thailand", description: "Bangkok, capitale de la Thaïlande, temple bouddhiste, marchés flottants et une vie nocturne vibrante.", latitude: 13.7563, longitude: 100.5018)

]

