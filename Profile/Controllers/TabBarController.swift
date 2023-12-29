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
        self.tabBar.tintColor = Colors.lightYellow.uiColor
        self.tabBar.unselectedItemTintColor = Colors.lightGray2.uiColor
    }
    
    private func setupTabs() {
        
        // MARK: - Resizing
        let targetSize = CGSize(width: 32, height: 32)
        
        let ideasImage = UIImage(named: "ideasIcon")?
            .withRenderingMode(.alwaysOriginal)
            .scalePreservingAspectRatio(targetSize: targetSize)
        let tutorialsImage = UIImage(named: "tutorialsIcon")?
            .withRenderingMode(.alwaysOriginal)
            .scalePreservingAspectRatio(targetSize: targetSize)
        let addImage = UIImage(named: "addIcon")?
            .withRenderingMode(.alwaysOriginal)
            .scalePreservingAspectRatio(targetSize: targetSize)
        let exploreImage = UIImage(named: "searchIcon")?
            .withRenderingMode(.alwaysOriginal)
            .scalePreservingAspectRatio(targetSize: targetSize)
        let profileImage = UIImage(named: "profileIcon")?
            .withRenderingMode(.alwaysOriginal)
            .scalePreservingAspectRatio(targetSize: targetSize)
        
        
        // MARK: - Creating Navs
        let ideas = self.createNav(with: "Идеи", image: ideasImage, vc: IdeasVC()) // lightbulb.min  // brain.head.profile
        let tutorials = self.createNav(with: "Туториалы", image: tutorialsImage, vc: TutorialsViewController())
        let add = self.createNav(with: "Добавить", image: addImage, vc: AddViewController())
        let explore = self.createNav(with: "Для вас", image: exploreImage, vc: ExploreViewController())
        let profile = self.createNav(with: "Профиль", image: profileImage, vc: ProfileViewController())
        self.setViewControllers([ideas, tutorials, add, explore, profile], animated: true)
    }
    
    private func createNav(with title: String, image: UIImage?, vc: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        nav.viewControllers.first?.navigationItem.backButtonTitle = ""
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        nav.navigationBar.tintColor = Colors.black.uiColor
        
//        nav.viewControllers.first?.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "next", style: .plain, target: nil, action: nil)
//        nav.viewControllers.first?.navigationItem.title = title
        return nav
    }
}
