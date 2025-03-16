//
//  LoginViewPresenter.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 13/3/25.
//

import Foundation

protocol LoginViewOutput: AnyObject {
    func loginStart(login: String, password: String)
    func registrationStart()
    func goToGoogleLogin()
    func goTofacebookLogin()
    func goToSignIn()
    func goToSignUp()
    func goToForgotPassword()
    func back()
}

class LoginPresenter {
    
    private var coordinator: LoginCoordinator?
    weak var viewInput: LoginvViewInput?
    
    init(coordinator: LoginCoordinator? = nil, viewInput: LoginvViewInput? = nil) {
        self.coordinator = coordinator
        self.viewInput = viewInput
    }
}

private extension LoginPresenter {
    func goToMainScreen() {
        coordinator?.finish()
    }
}

extension LoginPresenter: LoginViewOutput {
    func loginStart(login: String, password: String) {
        viewInput?.startLoader()
        if login.lowercased() == "test" && password == "123" {
            DispatchQueue.global().asyncAfter(deadline: .now() + 2.0) {
                DispatchQueue.main.async { [weak self] in
                    self?.viewInput?.stopLoader()
                    self?.goToMainScreen()
                }
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { [weak self] in
                print("wrong email or pass")
                self?.viewInput?.stopLoader()
            }
        }
        
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
