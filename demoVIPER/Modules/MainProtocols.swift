//
//  MainProtocols.swift
//  demoVIPER
//
//  Created by Станислав Никишков on 03.06.2020.
//  Copyright © 2020 Станислав Никишков. All rights reserved.
//

import Foundation
import UIKit

protocol MainViewProtocol: class {
   
}

protocol MainConfiguratorProtocol: class {
    func configure(_ viewcontroller: MainViewController)
}


protocol MainInteractorProtocol: class {
    func getCityNamesWith(index: Int) -> String
    func getNumberOfCities() -> Int
}

protocol MainPresenterProtocol: class {
    func getNameForCell(index: Int) -> String
    func numberOfRowsInSection() -> Int
}

protocol MainRouterProtocol: class {
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
}
