//
//  FeaturedFooter.swift
//  SummerDrinks
//
//  Created by Tim on 19/5/2019.
//  Copyright © 2019 Tim. All rights reserved.
//

import UIKit

class FeaturedFooter: UIView {
    
    let orderButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor.rgb(red: 0, green: 99, blue: 65)
        button.setTitle("Order", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(orderButton)
        orderButton.centerXInSuperview()
        orderButton.constrainWidth(constant: 300)
        orderButton.constrainHeight(constant: 50)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
