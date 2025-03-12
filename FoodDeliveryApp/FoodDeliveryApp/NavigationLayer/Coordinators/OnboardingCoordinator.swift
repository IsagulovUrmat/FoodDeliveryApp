//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 11/3/25.
//

import UIKit

// MARK: - OnboardingCoordinator
class OnboardingCoordinator: Coordinator {
    
    // MARK: - Properties
    private let factory = SceneFactory.self
    
    // MARK: - Methods
    override func start() {
        showOnboarding()
    }

    override func finish() {
        print("AppCoordinator Finished")
        finisDelegate?.coordinatorDidFinish(childCoordinator: self)
    }
}

// MARK: - Navigation
private extension OnboardingCoordinator {
    func showOnboarding() {
        
        let viewController = factory.makeOnboardingscene(coordinator: self)
        navigationController?.pushViewController(viewController, animated: true)
        
    }
}


