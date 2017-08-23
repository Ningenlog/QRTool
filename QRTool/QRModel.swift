//
//  QRModel.swift
//  QRTool
//
//  Created by Ningen Zheng on 19/08/2017.
//  Copyright © 2017 Ningen Zheng. All rights reserved.
//

import UIKit

class QRModel: NSObject {
    var logo: UIImage?
    var contentTxt: String?
    var color: UIColor?

    func initWith(logo: UIImage?, contentTxt: String?, color: UIColor?) -> QRModel {
        let qrModel = QRModel.init()
        qrModel.logo = logo
        qrModel.contentTxt = contentTxt
        qrModel.color = color
        
        return qrModel
    }

    
    
}
