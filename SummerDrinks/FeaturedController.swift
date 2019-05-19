//
//  ViewController.swift
//  SummerDrinks
//
//  Created by Tim on 19/5/2019.
//  Copyright © 2019 Tim. All rights reserved.
//

import UIKit

class FeaturedController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private let headerId = "headerId"
    private let cellId = "cellId"
    
    let collectionView = HorizontalSnappingCollectionView()
    
    
    let drinks = [Drink("Iced Shaken Green Tea Lemonade", "Fresh and Light", "green_tea_lemonade"),
                      Drink("Chestnut Latte", "Rich and Creamy", "chestnut_coffee"),
                      Drink("Ginger Beer", "Great for late afternoons", "ginger_beer")
                    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    fileprivate func setupLayout() {
        view.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        collectionView.register(FeaturedCard.self, forCellWithReuseIdentifier: cellId)
        
        let featuredHeader = FeaturedHeader()
        featuredHeader.constrainHeight(constant: 130)
        
        let featuredFooter = FeaturedFooter()
        featuredFooter.constrainHeight(constant: 50)
        
        let overallStackView = UIStackView(arrangedSubviews:
            [featuredHeader,
             collectionView,
             featuredFooter
            ])
        
        view.addSubview(overallStackView)
        overallStackView.axis = .vertical
        overallStackView.translatesAutoresizingMaskIntoConstraints = false
        overallStackView.spacing = 12
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor)
        
        overallStackView.isLayoutMarginsRelativeArrangement = true
        overallStackView.layoutMargins = .init(top: 12, left: 12, bottom: 12, right: 12)
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        collectionView.showsHorizontalScrollIndicator = false
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! FeaturedCard
        cell.imageView.image = UIImage(named: drinks[indexPath.item].imageName ?? "")
        cell.titleLabel.text = drinks[indexPath.item].title
        cell.subtitleLabel.text = drinks[indexPath.item].subtitle
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 48, height: collectionView.frame.height)
    }
    
   

}

