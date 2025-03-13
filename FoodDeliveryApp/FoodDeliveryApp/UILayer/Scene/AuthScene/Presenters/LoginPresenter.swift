//
//  LoginViewPresenter.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 13/3/25.
//

import Foundation

protocol LoginViewOutput: AnyObject {
    func login()
    func registrationStart()
    func goToGoogleLogin()
    func goTofacebookLogin()
    func goToSignIn()
    func goToSignUp()
    func goToForgotPassword()
    func back()
}

class LoginPresenter {
    
    private var coordinator: AppCoordinator?
    weak var viewInput: LoginvViewInput?
    
    init(coordinator: AppCoordinator? = nil, viewInput: LoginvViewInput? = nil) {
        self.coordinator = coordinator
        self.viewInput = viewInput
    }
}

extension LoginPresenter: LoginViewOutput {
    func login() {
            
    }
    
    func registrationStart() {
            
    }
    
    func goToGoogleLogin() {
            
    }
    
    func goTofacebookLogin() {
        
    }
    
    func goToSignIn() {
        coordinator?.showSignInScene()
    }
    
    func goToSignUp() {
        coordinator?.showSignUpScene()
    }
    
    func goToForgotPassword() {
         
    }
    
    func back() {
         
    }
    
    
}
