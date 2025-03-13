//
//  LoginViewController.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 13/3/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let bottomView = BottomView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupLayout()
        
        
    }
    
    func facebookPressed() {
        print("Facebook")
    }
    
    func googlePressed() {
        print("Google")
    }
}

private extension LoginViewController {
    func setupLayout() {
        setupBottomView()
    }
    
    func setupBottomView() {
        view.addSubview(bottomView)
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        
        bottomView.button1Action = facebookPressed
        bottomView.button2Action = googlePressed
        
        NSLayoutConstraint.activate([
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 150),
        ])
    }
}

//#Preview("LoginVC") {
//    LoginViewController()
//}
