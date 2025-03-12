//
//  UserStorage.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 12/3/25.
//

import Foundation

class UserStorage {
    
    static let shared = UserStorage()
    
    var passedOnboarding: Bool {
        get { UserDefaults.standard.bool(forKey: "passedOnboarding") }
        set { UserDefaults.standard.set(newValue, forKey: "passedOnboarding") }
        
    }
}
