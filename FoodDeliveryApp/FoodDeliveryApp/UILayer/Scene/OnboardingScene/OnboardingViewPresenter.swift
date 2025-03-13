//
//  OnboardingViewPresenter.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 12/3/25.
//

import Foundation

protocol OnboardingViewOutput: AnyObject {
    func onboardingFinish()
}

class OnboardingViewPresenter: OnboardingViewOutput {
    
    private let userStorage = UserStorage.shared
    
    // MARK: - Properties
    weak var coordinator: OnboardingCoordinator!
    
    init(coordinator: OnboardingCoordinator!) {
        self.coordinator = coordinator
    }
    
    
    func onboardingFinish() {
        userStorage.passedOnboarding = true
        coordinator.finish()
    }
    
    
}
