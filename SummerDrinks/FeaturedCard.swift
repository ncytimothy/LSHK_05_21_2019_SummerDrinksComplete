//
//  FeaturedCard.swift
//  SummerDrinks
//
//  Created by Tim on 19/5/2019.
//  Copyright © 2019 Tim. All rights reserved.
//

import UIKit

class FeaturedCard: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    let overlayView: UIView = {
        let view = UIView()
        let alphaBlack = UIColor.rgb(red: 0, green: 0, blue: 0, alpha: 0.2)
        view.backgroundColor = alphaBlack
        return view
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "DRINK"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = .white
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "DRINK DESCRIPTION"
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 20
        layer.masksToBounds = true
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel])
        stackView.axis = .vertical
        
        addSubview(imageView)
        addSubview(overlayView)
        addSubview(stackView)
        imageView.fillSuperview()
        overlayView.fillSuperview()
        stackView.anchor(top: nil, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 12, bottom: 40, right: 12))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
