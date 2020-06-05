//
//  MainConfigurator.swift
//  demoVIPER
//
//  Created by Станислав Никишков on 03.06.2020.
//  Copyright © 2020 Станислав Никишков. All rights reserved.
//

import Foundation

class MainConfigurator: MainConfiguratorProtocol {
    func configure(_ viewController: MainViewController) {
        let presenter = MainPresenter(view: viewController)
        let interactor = MainInteractor(presenter: presenter)
        let router = MainRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
