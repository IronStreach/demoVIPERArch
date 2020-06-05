//
//  City.swift
//  demoVIPER
//
//  Created by Станислав Никишков on 03.06.2020.
//  Copyright © 2020 Станислав Никишков. All rights reserved.
//

import Foundation

struct Weather: Decodable {
    let location: Location
    let current: Temperature
    
}

struct Location: Decodable {
    let name: String
    let lat: Double
    let lon: Double
}

struct Temperature: Decodable {
    let temp_c: Double
}
