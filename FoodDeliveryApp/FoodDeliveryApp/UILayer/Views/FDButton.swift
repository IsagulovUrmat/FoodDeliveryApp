//
//  FDButton.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 13/3/25.
//

import UIKit

enum FDButtonColorSchemes {
    case white
    case orange
    case gray
}

class FDButton: UIView {
    
    private let button = UIButton()
    var action: (() -> Void)?
    var scheme: FDButtonColorSchemes = .white {
        didSet {
            setColorScheme(scheme: scheme)
        }
    }
    
    
    init(scheme: FDButtonColorSchemes = .white) {
        super.init(frame: .zero)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        backgroundColor = .clear
        setupButton()
    }
    
    private func setupButton() {
        addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = .Roboto.bold.size(of: 18)
        button.layer.cornerRadius = 24
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: bottomAnchor),
            button.leadingAnchor.constraint(equalTo: leadingAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            button.topAnchor.constraint(equalTo: topAnchor),
        ])
        
    }
    
    @objc private func buttonPressed() {
        guard let action = self.action else {return }
        action()
    }
    
    private func setColorScheme(scheme: FDButtonColorSchemes) {
        switch scheme {
        case .white:
            button.setTitleColor(AppColor.accentOrange, for: .normal)
            button.backgroundColor = .white
        case .orange:
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = AppColor.accentOrange
        case .gray:
            button.setTitleColor(AppColor.black, for: .normal)
            button.backgroundColor = AppColor.gray
        }
    }
    
    public func setTitle(_ title: String?) {
        button.setTitle(title, for: .normal)
    }
    
}
