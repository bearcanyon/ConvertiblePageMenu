//
//  FirstViewController.swift
//  ConvertiblePageMenu
//
//  Created by KumagaiNaoki on 2016/05/23.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidLayoutSubviews() {
        if (self.view.subviews.isEmpty) {
            let frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
            let collectionView = CollectionView(frame: frame, collectionViewLayout: UICollectionViewFlowLayout())
            self.view.addSubview(collectionView)
        }
    }
}
