//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 11/3/25.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    
    override func start() {
        showOnboarding()
    }
    
    override func finish() {
        print("AppCoordinator Finished")
    }
}

private extension OnboardingCoordinator {
    func showOnboarding() {
        var pages = [OnboardingPartViewController]()
        
        let firstVC = OnboardingPartViewController()
        firstVC.titleText = "Delicious Food"
        firstVC.imageToShow = .chicken
        firstVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        firstVC.buttonText = "Next"
        
        let secondVC = OnboardingPartViewController()
        secondVC.titleText = "Fast Shipping"
        secondVC.imageToShow = .shipped
        secondVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        secondVC.buttonText = "Next"
        
        let thirdVC = OnboardingPartViewController()
        thirdVC.titleText = "Certificate Food"
        thirdVC.imageToShow = .medal
        thirdVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        thirdVC.buttonText = "Next"
        
        let fourthVC = OnboardingPartViewController()
        fourthVC.titleText = "Payment Online"
        fourthVC.imageToShow = .credit
        fourthVC.descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        fourthVC.buttonText = "Cool!"
     
        pages.append(firstVC)
        pages.append(secondVC)
        pages.append(thirdVC)
        pages.append(fourthVC)
        let presenter = OnboardingViewPresenter(coordinator: self)
        let viewController = OnboardingViewController(pages: pages, viewOutput: presenter)
        navigationController?.pushViewController(viewController, animated: true)
    }
}


