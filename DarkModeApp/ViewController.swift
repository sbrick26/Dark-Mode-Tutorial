//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Swayam Barik on 10/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // force dark/light mode even is user does that (not whole app)
        // for whole app do it in info.plist
        overrideUserInterfaceStyle = .dark
        
    }
    
    // wont work when user comes back from changing setting without quitting app
    
    override func viewWillAppear(_ animated: Bool) {
        changeButt()
        print("View Will Appear")
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        changeButt()
        print("trait collection did change")
    }
    
    
    
    
    func changeButt() {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        }
        else {
            changeButton.tintColor = UIColor.black
        }
    }


}

