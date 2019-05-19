//
//  Extensions.swift
//  SummerDrinks
//
//  Created by Tim on 19/5/2019.
//  Copyright © 2019 Tim. All rights reserved.
//

import UIKit

extension UIColor {
    
    static let divisor: CGFloat = 255
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: red / divisor, green: green / divisor, blue: blue / divisor, alpha: alpha)
    }
}
