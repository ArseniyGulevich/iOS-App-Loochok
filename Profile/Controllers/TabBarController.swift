//
//  TabBarController.swift
//  Profile
//  Created by Арсений Гулевич  on 15.12.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabs()
        
        self.tabBar.backgroundColor = Colors.black.uiColor
        self.tabBar.overrideUserInterfaceStyle = .dark
        self.tabBar.barTintColor = Colors.black.uiColor
        self.tabBar.tintColor = Colors.white.uiColor
    }
    
    private func setupTabs() {
        
        let ideas = self.createNav(with: "Идеи", image: UIImage(systemName: "lightbulb.circle"), vc: IdeasViewController()) // lightbulb.min  // brain.head.profile
        let tutorials = self.createNav(with: "Туториалы", image: UIImage(systemName: "book.fill"), vc: TutorialsViewController())
        let add = self.createNav(with: "Добавить", image: UIImage(named: "AddButtonImage" ), vc: TutorialsViewController())
        let explore = self.createNav(with: "Для вас", image: UIImage(systemName: "magnifyingglass.circle.fill"), vc: ExploreViewController())
        let profile = self.createNav(with: "Профиль", image: UIImage(systemName: "person.crop.square.fill"), vc: ProfileViewController())
        self.setViewControllers([ideas, tutorials, add, explore, profile], animated: true)
    }
    
    private func createNav(with title: String, image: UIImage?, vc: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        nav.viewControllers.first?.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Btn", style: .plain, target: nil, action: nil)
        return nav
    }
}
