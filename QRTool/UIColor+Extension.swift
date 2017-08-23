//
//  UIColor+Extension.swift
//  QRTool
//
//  Created by Ningen Zheng on 19/08/2017.
//  Copyright © 2017 Ningen Zheng. All rights reserved.
//

import UIKit
import Foundation

extension UIColor{
    class func getColorWithHexString(hexString: String) -> UIColor{
        
        // 修剪空白字符
        var cString: String = hexString.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // 传入错误
        if cString.characters.count < 6 {return UIColor.black}
        
        let index = cString.index(cString.endIndex, offsetBy: -6)
        
        if cString.hasPrefix("0X") {cString = cString.substring(from: index)}
        
        if cString.hasPrefix("#") {cString = cString.substring(from: index)}
        
        if cString.characters.count != 6 {return UIColor.black}
        
        
        
        var range: NSRange = NSMakeRange(0, 2)
        
        let rString = (cString as NSString).substring(with: range)
        
        range.location = 2
        
        let gString = (cString as NSString).substring(with: range)
        
        range.location = 4
        
        let bString = (cString as NSString).substring(with: range)
        
        
        
        var r: UInt32 = 0x0
        
        var g: UInt32 = 0x0
        
        var b: UInt32 = 0x0
        
        Scanner.init(string: rString).scanHexInt32(&r)
        
        Scanner.init(string: gString).scanHexInt32(&g)
        
        Scanner.init(string: bString).scanHexInt32(&b)
        
        
        
        return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: CGFloat(1))
    }
}
