//
//  MainRouter.swift
//  demoVIPER
//
//  Created by Станислав Никишков on 03.06.2020.
//  Copyright © 2020 Станислав Никишков. All rights reserved.
//

import Foundation
import UIKit

class MainRouter: MainRouterProtocol {
    
    weak var viewController: MainViewController!
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    init(viewController: MainViewController) {
        self.viewController = viewController
    }
}
