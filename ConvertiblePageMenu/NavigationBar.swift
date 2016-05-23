//
//  NavigationBar.swift
//  ConvertiblePageMenu
//
//  Created by KumagaiNaoki on 2016/05/23.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//

import UIKit

class NavigationBar: UINavigationBar {
    override func awakeFromNib() {
        self.barTintColor = UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)
        self.barTintColor = UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)
        self.shadowImage = UIImage()
        self.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.barStyle = UIBarStyle.Black
        self.tintColor = UIColor.whiteColor()
        self.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orangeColor()]
        self.translucent = false
    }
}
