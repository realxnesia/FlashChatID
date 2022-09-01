//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animatedTitle()
       
    }
    
    fileprivate func animatedTitle() {
        titleLabel.text = ""
        var charIndex = 0.0 //for timer showing the character
        let titleText = "⚡️FlashChat"
        for character in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { [weak self] title in
                self?.titleLabel.text?.append(character)
            }
            charIndex += 1
        }
    }
    

}
