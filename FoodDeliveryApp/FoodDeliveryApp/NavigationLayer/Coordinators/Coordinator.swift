//
//  Coordinator.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 11/3/25.
//

import UIKit

enum CoordinatorType {
    case app
    case onboarding
    case login
    case home
    case order
    case list
    case profile
}

protocol CoordinatorProtocol: AnyObject {
    var childCoordinators: [CoordinatorProtocol] { get set }
    var type: CoordinatorType { get }
    var navigationController: UINavigationController? { get set }
    var finisDelegate: CoordinatorFinishDelegate? { get set }
    
    func start()
    func finish()
}

extension CoordinatorProtocol {
    func addChildCoordinator(_ childCoordinator: CoordinatorProtocol) {
        childCoordinators.append(childCoordinator)
    }
    
    func removeChildCoordinator(_ childCoordinator: CoordinatorProtocol) {
        childCoordinators = childCoordinators.filter { $0 !== childCoordinator }
    }
}

protocol CoordinatorFinishDelegate: AnyObject {
    func coordinatorDidFinish(childCoordinator: CoordinatorProtocol)
}

protocol TabBarCoordinator: AnyObject, CoordinatorProtocol {
    var tabBarController: UITabBarController? { get set }
}

class Coordinator: CoordinatorProtocol {
    var childCoordinators: [any CoordinatorProtocol]
    var type: CoordinatorType
    var navigationController: UINavigationController?
    var finisDelegate: (any CoordinatorFinishDelegate)?
    
    init(childCoordinators: [any CoordinatorProtocol] = [CoordinatorProtocol]() , type: CoordinatorType, navigationController: UINavigationController, finisDelegate: (any CoordinatorFinishDelegate)? = nil) {
        self.childCoordinators = childCoordinators
        self.type = type
        self.navigationController = navigationController
        self.finisDelegate = finisDelegate
    }
    
    deinit {
        print("Coordinator deinited \(type)")
        childCoordinators.forEach { $0.finisDelegate = nil }
        childCoordinators.removeAll()
    }
    
    func start() {
        print("Coordinator start")
    }
    
    func finish() {
        print("Coordinator finish")
    }
    
    
}
