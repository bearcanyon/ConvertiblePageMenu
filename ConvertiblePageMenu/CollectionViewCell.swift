//
//  CollectionViewCell.swift
//  ConvertiblePageMenu
//
//  Created by KumagaiNaoki on 2016/05/23.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageView.image = UIImage(named: "cat.png")
        nameLabel.text = "願う猫"
        placeLabel.text = "¥9,999,999"
    }
}
