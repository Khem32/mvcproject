//
//  ViewController.swift
//  mcvproject
//
//  Created by Lamichhane Khemraj on 2023/11/27.
//

import UIKit

class ViewController: UIViewController {
    lazy var game = colorgame(NumbersOfPair: ListofBtn.count/2)
    
    var clickCounter = 0 {
        didSet {
            counter.text = "~\(clickCounter)~"
        }
    }
    
    @IBOutlet weak var counter: UILabel!
    
    @IBOutlet var ListofBtn: [UIButton]!
    
    
    @IBAction func Btn(_ sender: UIButton) {
        clickCounter += 1
       if let btnNumber = ListofBtn.firstIndex(of: sender){
            game.chooseBTn(at: btnNumber)
           updateViewFromModel()
       } else {
           print("Not in the list")
       }
    }
    
    func updateViewFromModel() {
        for index in ListofBtn.indices {
            let button = ListofBtn[index]
            let btn = game.buttons[index]
            if btn.isBtnWhite {
                button.setTitle("it`s white", for: UIControl.State.normal)
                button.backgroundColor = UIColor.white
            }
            else {
                button.setTitle("it`s not white", for: .normal)
                button.backgroundColor = btn.color
            }
        }
    }
}
extension UIColor {
    static func random() -> UIColor {
        return UIColor (red: .random(in: 0...1),
                        green: .random(in: 0...1),
                        blue: .random(in: 0...1),
                        alpha: 1.0)
    }
}
