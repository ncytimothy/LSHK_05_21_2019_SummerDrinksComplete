//
//  HorizontalSnappingController.swift
//  SummerDrinks
//
//  Created by Tim on 19/5/2019.
//  Copyright © 2019 Tim. All rights reserved.
//

import UIKit

class HorizontalSnappingCollectionView: UICollectionView {
    init() {
        let layout = SnappingLayout()
        super.init(frame: .zero, collectionViewLayout: layout)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class SnappingLayout: UICollectionViewFlowLayout {
    // snapping behavior
    
}
