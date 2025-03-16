//
//  FDTextField.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 13/3/25.
//

import UIKit

class FDTextField: UITextField {
    
    init() {
        super.init(frame: .zero)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        layer.cornerRadius = 24
        backgroundColor = AppColor.gray
        font = UIFont.Roboto.regular.size(of: 14)
        placeholder = "Text to input"
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: self.frame.height))
        leftView = paddingView
        rightView = paddingView
        rightViewMode = .always
        leftViewMode = .always
    }
}
