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
    // snapping behavior, rudimentary solution
    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        // .zero snaps back to (0,0)
        guard let collectionView = self.collectionView else {
            return super.targetContentOffset(forProposedContentOffset: proposedContentOffset, withScrollingVelocity: velocity)
        }
        let horizontalOffset: CGFloat = 48
        // Rough math
        let itemWidth = collectionView.frame.width - horizontalOffset
        let pageNumber = collectionView.contentOffset.x / itemWidth
        print(round(pageNumber))
        
         return CGPoint(x: pageNumber * itemWidth, y: 0)
    }
}
