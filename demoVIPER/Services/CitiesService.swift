//
//  CitiesService.swift
//  demoVIPER
//
//  Created by Станислав Никишков on 05.06.2020.
//  Copyright © 2020 Станислав Никишков. All rights reserved.
//

import Foundation

func getCities() -> [City] {
    let moscow = City(name: "Moscow", lat: 55.755814, lon: 37.617635)
    let saratov = City(name: "Saratov", lat: 51.533103, lon: 46.034158)
    let novosibirsk = City(name: "Novosibirsk", lat: 55.030199, lon: 82.920430)
    let cities: [City] = [moscow, saratov, novosibirsk]
    return cities
}
