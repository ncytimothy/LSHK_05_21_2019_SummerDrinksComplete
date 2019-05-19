//
//  Drink.swift
//  SummerDrinks
//
//  Created by Tim on 19/5/2019.
//  Copyright © 2019 Tim. All rights reserved.
//

import Foundation

struct Drink {
    let title: String?
    let subtitle: String?
    let imageName: String?
    
    init(_ title: String, _ subtitle: String, _ imageName: String) {
        self.title = title
        self.subtitle = subtitle
        self.imageName = imageName
    }
}


