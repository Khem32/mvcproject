//
//  btn.swift
//  mcvproject
//
//  Created by Lamichhane Khemraj on 2023/11/27.
//

import Foundation
import UIKit

struct Btn {
    var isBtnWhite = true
    var isBtnNotWhite = false
    var color: UIColor
    var BtnId : Int
    
    static var IDfactory = 0
    
    static func getUniqueID() -> Int {
        IDfactory += 1
        return IDfactory
    }
    
    init(color: UIColor) {
        self.color = color
        self.BtnId = Btn.getUniqueID()
    }
}
