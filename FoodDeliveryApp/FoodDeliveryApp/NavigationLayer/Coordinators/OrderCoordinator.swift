//
//  OrderCoordinator.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 11/3/25.
//

import UIKit

class OrderCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .yellow
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("AppCoordinator Finished")
    }
}
