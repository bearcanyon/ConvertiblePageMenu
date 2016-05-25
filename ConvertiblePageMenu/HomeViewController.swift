//
//  HomeViewController.swift
//  ConvertiblePageMenu
//
//  Created by KumagaiNaoki on 2016/05/23.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//

import UIKit
import PageMenu

class HomeViewController: UIViewController {
    
    var pageMenuModel = PageMenuModel()
    var count:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "PAGE MENU"
        addViewControllers()
    }
    
    func addViewControllers() {
        pageMenuModel.controllerArray = []
        
        let ud = NSUserDefaults.standardUserDefaults()
        if (ud.objectForKey("viewControllers") != nil) {
            count = ud.objectForKey("viewControllers") as? Int
        } else {
            count = 1
            ud.setInteger(count!, forKey: "viewControllers")
            ud.synchronize()
        }
        
        for _ in 0 ..< count! {
            addFirstViewController()
        }
        addPlusButtonViewController()
        pageMenuModel.setPageMenu(self)
    }
    
    func addFirstViewController(){
        let firstViewController = FirstViewController(nibName: "FirstViewController", bundle: nil)
        firstViewController.title = "title"
        firstViewController.view.frame = self.view.frame
        pageMenuModel.addController(firstViewController)
    }

    func addPlusButtonViewController() {
        let plusButtonViewController = PlusButtonViewController(nibName: "PlusButtonViewController", bundle: nil)
        plusButtonViewController.title = "＋"
        plusButtonViewController.homecontroller = self
        pageMenuModel.addController(plusButtonViewController)
    }
}
