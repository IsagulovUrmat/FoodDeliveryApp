//
//  BottomView.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 13/3/25.
//

import UIKit

class FDBottomView: UIView {
    
    private let label = UILabel()
    private let view1 = UIView()
    private let view2 = UIImageView()
    private let button1 = UIButton()
    private let button2 = UIButton()
    
    var button1Action: (() -> Void)?
    var button2Action: (() -> Void)?
    
    init() {
        super.init(frame: .zero)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        backgroundColor = .clear
        setupLabel()
        setupView1()
        setupView2()
        setupButton1()
        setupButton2()
    }
    
    private func setupLabel() {
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Or connect with"
        label.font = .Roboto.regular.size(of: 14)
        label.textColor = AppColor.separator
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30)
        ])
    }
    
    private func setupView1() {
        self.addSubview(view1)
        view1.backgroundColor = AppColor.separator.withAlphaComponent(0.3)
        view1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            view1.centerYAnchor.constraint(equalTo: label.centerYAnchor, constant: 0),
            view1.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            view1.trailingAnchor.constraint(equalTo: label.leadingAnchor, constant: -12),
            view1.heightAnchor.constraint(equalToConstant: 2),
        ])
    }
    
    private func setupView2() {
        addSubview(view2)
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.backgroundColor = .clear
        view2.image = UIImage(named: "bottomViewImage")
        view2.contentMode = .scaleAspectFit
        view2.clipsToBounds = true
        
        NSLayoutConstraint.activate([
            view2.topAnchor.constraint(equalTo: view1.bottomAnchor, constant: 18),
            view2.leadingAnchor.constraint(equalTo: leadingAnchor),
            view2.heightAnchor.constraint(equalToConstant: 160),
            view2.widthAnchor.constraint(equalToConstant: 250),
        ])
    }
    
    private func setupButton1() {
        addSubview(button1)
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.setImage(.facebook, for: .normal)
        button1.addTarget(self, action: #selector(button1Tappaed), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button1.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            button1.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
        ])
    }
    
    private func setupButton2() {
        addSubview(button2)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.setImage(.google, for: .normal)
        button2.addTarget(self, action: #selector(button2Tappaed), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button2.trailingAnchor.constraint(equalTo: button1.leadingAnchor, constant: -20),
            button2.centerYAnchor.constraint(equalTo: button1.centerYAnchor),
        ])
    }
    
}

private extension FDBottomView {
    
    @objc func button1Tappaed() {
        button1Action?()
    }
    
    @objc func button2Tappaed() {
        button2Action?()
    }
}

//#Preview("BottomView", traits: .fixedLayout(width: 400, height: 150)) {
//    BottomView()
//}
