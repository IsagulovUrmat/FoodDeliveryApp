//
//  HomeCoordinator.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 11/3/25.
//

import UIKit

class HomeCoordinator: Coordinator {
    
    private let factory = SceneFactory.self
    
    override func start() {
        showHomeScene()
    }
    
    override func finish() {
        print("AppCoordinator Finished")
    }
}

extension HomeCoordinator {
    func showHomeScene() {
        guard let navigationController = navigationController else { return }
        let vc = factory.makeHomeScene(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
}
