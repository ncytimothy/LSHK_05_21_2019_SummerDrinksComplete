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
        
        let layout = BetterSnappingLayout()
        super.init(frame: .zero, collectionViewLayout: layout)
        // call after super init
        decelerationRate = .fast
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//class SnappingLayout: UICollectionViewFlowLayout {
//    // snapping behavior, rudimentary solution
//
//    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
//        guard let collectionView = collectionView else { return super.targetContentOffset(forProposedContentOffset: proposedContentOffset, withScrollingVelocity: velocity) }
//        let parent = super.targetContentOffset(forProposedContentOffset: proposedContentOffset, withScrollingVelocity: velocity)
//
//        // we are using this magical 48
//        let itemWidth = collectionView.frame.width - 48
//        let itemSpace = itemWidth + minimumInteritemSpacing
//        var currentItemIdx = round(collectionView.contentOffset.x / itemSpace)
//
//        // Skip to the next cell, if there is residual scrolling velocity left.
//        // This helps to prevent glitches
//
//        let vX = velocity.x
//        if vX > 0 {
//            currentItemIdx += 1
//        } else if vX < 0 {
//            currentItemIdx -= 1
//        }
//
//        let nearestPageOffset = currentItemIdx * itemSpace
//        return CGPoint(x: nearestPageOffset,
//                       y: parent.y)
//
////    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
////        // .zero snaps back to (0,0)
////        guard let collectionView = self.collectionView else {
////            return super.targetContentOffset(forProposedContentOffset: proposedContentOffset, withScrollingVelocity: velocity)
////        }
////        let horizontalOffset: CGFloat = 48
////        // Rough math
////        let itemWidth = collectionView.frame.width - horizontalOffset
////        let pageNumber = collectionView.contentOffset.x / itemWidth
////        print(round(pageNumber))
////
////         return CGPoint(x: pageNumber * itemWidth, y: 0)
////    }
//    }
//}
