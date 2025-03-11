//
//  HomeCoordinator.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 11/3/25.
//

import UIKit

class HomeCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .red
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("AppCoordinator Finished")
    }
}
