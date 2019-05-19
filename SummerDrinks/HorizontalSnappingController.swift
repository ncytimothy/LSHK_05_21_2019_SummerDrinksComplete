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
        // call after super init
        decelerationRate = .fast
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class SnappingLayout: UICollectionViewFlowLayout {
    // snapping behavior
    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        // .zero snaps back to (0,0)
        return .zero
    }
}
