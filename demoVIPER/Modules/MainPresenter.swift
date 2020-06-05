//
//  MainPresenter.swift
//  demoVIPER
//
//  Created by Станислав Никишков on 03.06.2020.
//  Copyright © 2020 Станислав Никишков. All rights reserved.
//

import Foundation

class MainPresenter: MainPresenterProtocol {
    weak var view: MainViewProtocol!
    var interactor: MainInteractorProtocol!
    var router: MainRouterProtocol!
    
    required init(view: MainViewController) {
        self.view = view
    }
    
    func numberOfRowsInSection() -> Int {
        print(interactor.getNumberOfCities())
        return interactor.getNumberOfCities()
    }
    
    func getNameForCell(index: Int) -> String {
        return interactor.getCityNamesWith(index: index)
    }
         
}
