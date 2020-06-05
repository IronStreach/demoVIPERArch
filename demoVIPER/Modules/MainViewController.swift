//
//  MainViewController.swift
//  demoVIPER
//
//  Created by Станислав Никишков on 03.06.2020.
//  Copyright © 2020 Станислав Никишков. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    var presenter: MainPresenterProtocol!
    let configurator: MainConfiguratorProtocol = MainConfigurator()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator.configure(self)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell") as! CityCell
        cell.cityName?.text = presenter.getNameForCell(index: indexPath.row)
        return cell
    }
}

extension MainViewController: MainViewProtocol {
    
}

