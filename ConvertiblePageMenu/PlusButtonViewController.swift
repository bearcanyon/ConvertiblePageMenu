//
//  PlusButtonViewController.swift
//  ConvertiblePageMenu
//
//  Created by KumagaiNaoki on 2016/05/23.
//  Copyright © 2016年 KumagaiNaoki. All rights reserved.
//

import UIKit

class PlusButtonViewController: UIViewController {
    
    var homecontroller: HomeViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tapPlusButton(sender: UIButton) {
        let ud = NSUserDefaults.standardUserDefaults()
        if (ud.objectForKey("viewControllers") != nil) {
            let count = ud.objectForKey("viewControllers") as! Int
            ud.setInteger(count + 1, forKey: "viewControllers")
            ud.synchronize()
            homecontroller?.loadView()
            homecontroller?.viewDidLoad()
        }
    }
    
    @IBAction func tapMinusButton(sender: UIButton) {
        let ud = NSUserDefaults.standardUserDefaults()
        if (ud.objectForKey("viewControllers") != nil) {
            let count = ud.objectForKey("viewControllers") as! Int
            ud.setInteger(count - 1, forKey: "viewControllers")
            ud.synchronize()
            homecontroller?.loadView()
            homecontroller?.viewDidLoad()
        }
    }
}
