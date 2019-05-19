//
//  FeaturedHeader.swift
//  SummerDrinks
//
//  Created by Tim on 19/5/2019.
//  Copyright © 2019 Tim. All rights reserved.
//

import UIKit

class FeaturedHeader: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Come In To \nGet Away"
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 32)
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Beverages for the Summer"
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = UIColor(white: 0, alpha: 0.5)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHeaderUI()
    }
    
    fileprivate func setupHeaderUI() {
        let separatorLine = UIView()
        separatorLine.backgroundColor = .rgb(red: 254, green: 240, blue: 3)
        addSubview(separatorLine)
        separatorLine.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: nil)
        separatorLine.constrainHeight(constant: 12)
        separatorLine.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6).isActive = true
        
        addSubview(titleLabel)
        titleLabel.anchor(top: separatorLine.bottomAnchor, leading: separatorLine.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 8, left: 0, bottom: 0, right: 0))
        
        addSubview(subtitleLabel)
        subtitleLabel.anchor(top: titleLabel.bottomAnchor, leading: separatorLine.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 12, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
