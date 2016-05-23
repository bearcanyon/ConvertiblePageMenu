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
        
        switch count! {
        case 1:
            print("1")
            addFirstViewController()
        case 2:
            print("2")
            addFirstViewController()
            addSecondViewController()
        case 3:
            print("3")
            addFirstViewController()
            addSecondViewController()
            addThirdViewController()
        default:
            print("もっと増やしたいならViewCoontrollerファイルとXibファイル用意しておく")
            break
        }
        addPlusButtonViewController()
        pageMenuModel.setPageMenu(self)
    }
    
    func addFirstViewController(){
        let firstViewController = FirstViewController(nibName: "FirstViewController", bundle: nil)
        firstViewController.title = "First"
        firstViewController.view.frame = self.view.frame
        pageMenuModel.addController(firstViewController)
    }
    
    func addSecondViewController() {
        let secondViewController = SecondViewController(nibName: "SecondViewController", bundle: nil)
        secondViewController.title = "Second"
        secondViewController.view.frame = self.view.frame
        pageMenuModel.addController(secondViewController)
    }
    
    func addThirdViewController() {
        let thirdViewController = ThirdViewController(nibName: "ThirdViewController", bundle: nil)
        thirdViewController.title = "Third"
        thirdViewController.view.frame = self.view.frame
        pageMenuModel.addController(thirdViewController)
    }
    
    func addPlusButtonViewController() {
        let plusButtonViewController = PlusButtonViewController(nibName: "PlusButtonViewController", bundle: nil)
        plusButtonViewController.title = "＋"
        plusButtonViewController.homecontroller = self
        pageMenuModel.addController(plusButtonViewController)
    }
}
