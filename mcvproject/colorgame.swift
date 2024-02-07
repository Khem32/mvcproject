//
//  colorgame.swift
//  mcvproject
//
//  Created by Lamichhane Khemraj on 2023/11/27.
//

import Foundation
import UIKit

class colorgame {
    var buttons = [Btn]()
        
    func chooseBTn(at index: Int) {
        guard index >= 0, index < buttons.count else {
                   print("Invalid index")
                   return
               }
        var selectedBtn = buttons[index]
                selectedBtn.isBtnWhite.toggle()
        buttons[index] = selectedBtn
                
                print("Chose button at index \(index). isBtnWhite: \(selectedBtn.isBtnWhite)")
            }
    init (NumbersOfPair:Int) {
        for _ in 0..<NumbersOfPair {
            let Btn1 = UIColor.random()
            let Btn2 = Btn(color: Btn1)
            buttons += [Btn2,Btn2]
        }
        buttons.shuffle()
    }
}
