//
//  HomePresenter.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 18/3/25.
//

import Foundation

protocol HomePresenterProtocol: AnyObject {
    var categoryData: [FoodCategory] { get }
//    var foodMenuData: [FoodMenuItem] { get }
//    var restourantData: [Restaurant] { get }
    func getSelectedCategory() -> FoodCategory
}

class HomePresenter: HomePresenterProtocol {
    
    // MARK: - Properies
    let coordinator: HomeCoordinator
    var categoryData: [FoodCategory] = []
    
    
    // MARK: - Initializers
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
        getCategoryData()
    }
    
    // MARK: - Methods
    func getSelectedCategory() -> FoodCategory {
        return .none
    }
    
    private func getCategoryData() {
        // Mock data
        categoryData = [.drink, .food, .cake, .snack, .salad, .seaFood]
    }
}
