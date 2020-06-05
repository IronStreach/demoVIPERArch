//
//  MainIteractor.swift
//  demoVIPER
//
//  Created by Станислав Никишков on 03.06.2020.
//  Copyright © 2020 Станислав Никишков. All rights reserved.
//

import Foundation

class MainInteractor: MainInteractorProtocol {
    
    var presenter: MainPresenterProtocol!
    var cities: [City]
    
    func getCityNamesWith(index: Int) -> String {
        return cities[index].name
    }
    
    init(presenter: MainPresenterProtocol) {
        self.presenter = presenter
        self.cities = getCities()
    }
    
    func getNumberOfCities() -> Int {
        return cities.count
    }
}
