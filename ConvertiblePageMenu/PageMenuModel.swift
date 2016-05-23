//
//  PageMenuModel.swift
//  ConvertiblePageMenu
//
//  Created by KumagaiNaoki on 2016/05/23.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//

import Foundation
import PageMenu

class PageMenuModel {
    
    var pageMenu: CAPSPageMenu?
    var params: [CAPSPageMenuOption]
    var controllerArray: [UIViewController] = []
    
    init() {
        params = [
            .ScrollMenuBackgroundColor(UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)),
            .ViewBackgroundColor(UIColor.blueColor()),
            .SelectionIndicatorColor(UIColor.orangeColor()),
            .BottomMenuHairlineColor(UIColor.purpleColor()),
            .MenuItemFont(UIFont(name: "HelveticaNeue", size: 18.0)!),
            .MenuHeight(80.0),
            .MenuItemWidth(90.0),
            .CenterMenuItems(true)
        ]
    }
    
    func addController(viewControlelr: UIViewController) {
        self.controllerArray.append(viewControlelr)
    }
    
    func setPageMenu(baseViewController: UIViewController) {
        var num = 0
        for controller in controllerArray {
            if controller is PlusButtonViewController {
                controllerArray.removeAtIndex(num)
                controllerArray.append(controller)
            }
            num += 1
        }
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 0.0, baseViewController.view.frame.width , baseViewController.view.frame.height), pageMenuOptions: params)
        baseViewController.view.addSubview(pageMenu!.view)
    }
}

