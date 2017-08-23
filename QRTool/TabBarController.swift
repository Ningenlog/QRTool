//
//  TabBarController.swift
//  QRTool
//
//  Created by Ningen Zheng on 19/08/2017.
//  Copyright © 2017 Ningen Zheng. All rights reserved.
//

import UIKit

class TabBarController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupSubcontroller()
        
//        let tabBar = ZZTabBar()
//        let scanVC = ScanController()
//        scanVC.tabBarC = self
//        tabBar.scanMethod = {
//            self.present(scanVC, animated: true, completion: nil)
//        }
//        setValue(tabBar, forKey: "tabBar")
        
        let tabBar = ZZTabBar()
        let scanVC = ScanController()
        tabBar.scanMethod = {
            self.present(scanVC, animated: true, completion: nil)
        }
//        setValue(tabBar, forKey: "tabBar")
    }
    
    func setupSubcontroller() -> Void {
        let creatVC = CreatQRController()
        self.addChildViewController(creatVC)
        
        let scanVC = ScanController()
        self.addChildViewController(scanVC)
        
        let settingVC = SettingController()
        self.addChildViewController(settingVC)
        
    }

}
