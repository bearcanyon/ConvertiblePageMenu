//
//  CollectionViewController.swift
//  ConvertiblePageMenu
//
//  Created by KumagaiNaoki on 2016/05/23.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//

import UIKit

class CollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .Vertical
        flowLayout.minimumInteritemSpacing = 1.0
        flowLayout.minimumLineSpacing = 1.0
        flowLayout.sectionInset = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
        flowLayout.itemSize = CGSizeMake(frame.size.width / 2 - 2, frame.size.width / 2 + 52)
        
        super.init(frame: frame, collectionViewLayout: flowLayout)
        self.delegate = self
        self.dataSource = self
        self.registerNib(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        self.backgroundColor = UIColor.whiteColor()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionViewCell", forIndexPath: indexPath) as! CollectionViewCell
        return cell
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("\(indexPath.item)")
    }
}

