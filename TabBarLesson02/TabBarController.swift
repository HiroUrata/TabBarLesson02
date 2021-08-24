//
//  TabBarController.swift
//  TabBarLesson02
//
//  Created by UrataHiroki on 2021/08/24.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.barTintColor = .black
        tabBar.tintColor = .white
        
        tabBar.layer.cornerRadius = 45.0
        tabBar.layer.masksToBounds = true
        
        tabBar.layer.borderWidth = 3.0
        tabBar.layer.borderColor = UIColor.white.cgColor
        
        
    }
    
    

}
