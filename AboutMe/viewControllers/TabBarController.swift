//
//  TabBarController.swift
//  AboutMe
//
//  Created by PASGON TEXTILE on 13.10.23.
//

import UIKit

final class TabBarController: UITabBarController {
    
    private let person = Person.getPerson()
    private let company = Company.getCompany()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVc = $0 as? WelcomeViewController {
                welcomeVc.person = person
                welcomeVc.company = company
            } else if let navigationVC = $0 as? NewNavigationController {
                let userInfoVC = navigationVC.topViewController
                guard let userInfoVC = userInfoVC as? InfoViewController else { return }
                userInfoVC.person = person
                userInfoVC.company = company
            }
        }
    }
}
