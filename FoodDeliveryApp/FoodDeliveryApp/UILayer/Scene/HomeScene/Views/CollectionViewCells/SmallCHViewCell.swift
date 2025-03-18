//
//  SmallCHViewCell.swift
//  FoodDeliveryApp
//
//  Created by sunflow on 18/3/25.
//

import UIKit

class SmallCHViewCell: UICollectionViewCell {
    
    let topView = UIView()
    let bottomLabel = UILabel()
    let imageView = UIImageView()
    var isCategorySelected = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with category: FoodCategory) {
        bottomLabel.text = category.rawValue
        switch category {
        case .drink:
            imageView.image = .drink.withTintColor(isCategorySelected ? .white : .black)
        case .snack:
            imageView.image = .snack.withTintColor(isCategorySelected ? .white : .black)
        case .food:
            imageView.image = .food.withTintColor(isCategorySelected ? .white : .black)
        case .cake:
            imageView.image = .cake.withTintColor(isCategorySelected ? .white : .black)
        case .salad:
            imageView.image = .salad.withTintColor(isCategorySelected ? .white : .black)
        case .seaFood:
            imageView.image = .seafood.withTintColor(isCategorySelected ? .white : .black)
        case .none:
            imageView.image = .nopic.withTintColor(isCategorySelected ? .white : .black)
        }
    }
    
    func toggleSelection() {
        if isCategorySelected {
            imageView.image = imageView.image?.withTintColor(.black)
            topView.backgroundColor = AppColor.gray
        } else {
            imageView.image = imageView.image?.withTintColor(.white)
            topView.backgroundColor = AppColor.accentOrange
        }
        isCategorySelected.toggle()
    }
    
    func setupCell() {
        contentView.backgroundColor = .clear
        setupTopView()
        setupBottomLabel()
    }
    
    func setupTopView() {
        contentView.addSubview(topView)
        topView.translatesAutoresizingMaskIntoConstraints = false
        
        topView.backgroundColor = AppColor.gray
        topView.layer.cornerRadius = 20
        topView.layer.masksToBounds = true
        
        NSLayoutConstraint.activate([
            topView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            topView.topAnchor.constraint(equalTo: contentView.topAnchor),
            topView.heightAnchor.constraint(equalToConstant: 70),
            topView.widthAnchor.constraint(equalToConstant: 70),
        ])
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        topView.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: topView.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 30),
            imageView.widthAnchor.constraint(equalToConstant: 30),
            
        ])
    }
    
    func setupBottomLabel() {
        contentView.addSubview(bottomLabel)
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        
        bottomLabel.font = .Roboto.regular.size(of: 14)
        bottomLabel.text = "test label"
        bottomLabel.textColor = AppColor.black
        
        NSLayoutConstraint.activate([
            bottomLabel.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 5),
            bottomLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
        ])
    }
}
