//
//  ZZTabBar.swift
//  QRTool
//
//  Created by Ningen Zheng on 19/08/2017.
//  Copyright © 2017 Ningen Zheng. All rights reserved.
//

import UIKit

class ZZTabBar: UITabBar {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        tintColor = UIColor.getColorWithHexString(hexString: "#c0c0c0")
        // 配置tabBar的字体颜色与大小
        let items = UITabBarItem.appearance()
        items.setTitleTextAttributes([NSFontAttributeName:UIFont.systemFont(ofSize: 11), NSForegroundColorAttributeName:UIColor.white], for: .normal)
        items.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.black], for: .selected)
        
    }
    
    // 扫描按钮
    lazy var scanBtn: UIButton = {
        () -> UIButton in
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named: "scan")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), for: UIControlState.normal)
        btn.setImage(UIImage(named: "scan_highlighted")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), for: UIControlState.highlighted)
        
        btn.sizeToFit()
        self.addSubview(btn)
        btn.addTarget(self, action: #selector(scanButtonOnClick), for: UIControlEvents.touchUpInside)
        return btn
    }()
    
    var scanMethod: () -> () = {
        // 占位闭包
    }
    
    // 点击扫描后执行的方法
    func scanButtonOnClick() {
        scanMethod()
    }
    
    // 重写布局方法
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let height = self.bounds.height
        let width = self.bounds.width / 5.0
        var x: CGFloat = 0.0
        let y: CGFloat = 0.0
        
        var i: CGFloat = 0.0
        
        for view in subviews {
            
            if view.isKind(of: NSClassFromString("UITabBarButton")!) {
                if i == 2 {
                    scanBtn.frame = CGRect(x: i * width, y: y, width: width, height: height)
                    i += 1.0
                }
                x = i * width
                view.frame = CGRect(x: x, y: y, width: width, height: height)
                i += 1.0
            }
        }
        
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
