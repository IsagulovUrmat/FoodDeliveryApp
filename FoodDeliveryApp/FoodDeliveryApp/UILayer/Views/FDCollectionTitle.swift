//
//  FDCollectionTitle.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 18/3/25.
//

import UIKit

class FDCollectionTitle: UIView {
    
    var title = UILabel()
    var viewAllButton = UIButton()
    
    init() {
        super.init(frame: .zero)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

private extension FDCollectionTitle {
    func setupLayout() {
        configreView()
        configureTitle()
        configreViewAllButton()
    }
    
    func configreView() {
        backgroundColor = .clear
    }
    
    func configureTitle() {
        addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.boldSystemFont(ofSize: 18)
        title.text = "Title"
        
        NSLayoutConstraint.activate([
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            title.heightAnchor.constraint(equalToConstant: 22),
        ])
    }
    
    func configreViewAllButton() {
        addSubview(viewAllButton)
        viewAllButton.translatesAutoresizingMaskIntoConstraints = false
        viewAllButton.setTitle("View all", for: .normal)
        viewAllButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        viewAllButton.setTitleColor(.black, for: .normal)
        
        NSLayoutConstraint.activate([
            viewAllButton.centerYAnchor.constraint(equalTo: title.centerYAnchor),
            viewAllButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            viewAllButton.heightAnchor.constraint(equalToConstant: 22),
        ])
    }
}
