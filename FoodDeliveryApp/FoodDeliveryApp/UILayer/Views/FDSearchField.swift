//
//  FDSearchField.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 18/3/25.
//

import UIKit

class FDSearchField: UITextField {
    
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
        font = UIFont.Roboto.regular.size(of: 16)
        attributedPlaceholder = NSAttributedString(string: "Search", attributes: [NSAttributedString.Key.foregroundColor: AppColor.black.withAlphaComponent(0.3)])
        
        let imageView = UIImageView(frame: CGRect(x: 20, y: 0, width: 20, height: 20))
        imageView.image = .loupe
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 20 + 20 + 10, height: 20))
        leftPaddingView.addSubview(imageView)
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: self.frame.height))
        leftView = leftPaddingView
        rightView = paddingView
        rightViewMode = .always
        leftViewMode = .always
    }
}
