//
//  LCTabBarController.swift
//  Let's Cook
//
//  Created by Khin Phone Ei on 12/01/2024.
//

import UIKit

class LCTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureTabbar()
    }
    
    func configureTabbar() {
        self.viewControllers        = [createHomeNavigationController(), createBookmarkNavigationController(), createNotiNavigationController(), createProfileNavigationController()]
        
        tabBar.layer.shadowColor    = UIColor.black.cgColor
        tabBar.layer.shadowOffset   = CGSize(width: 0, height: -3)
        tabBar.layer.shadowOpacity  = 0.1
        tabBar.layer.shadowRadius   = 4
        tabBar.clipsToBounds        = false
        
        tabBar.backgroundColor      = .white
    }
    
    func createHomeNavigationController() -> UINavigationController {
        let feedVc = RecipeFeedViewController()
        feedVc.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "inactive-home"), selectedImage: UIImage(named: "active-home"))
        
        return UINavigationController(rootViewController: feedVc)
    }
    
    func createBookmarkNavigationController() -> UINavigationController {
        let bookmarkVc = BookmarkViewController()
        bookmarkVc.title = "Saved Recipe"
        bookmarkVc.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "inactive-bookmark"), selectedImage: UIImage(named: "active-bookmark"))
        
        return UINavigationController(rootViewController: bookmarkVc)
    }
    
    func createNotiNavigationController() -> UINavigationController {
        let notiVc = NotificationViewController()
        notiVc.title = "Notifications"
        notiVc.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "inactive-notification"), selectedImage: UIImage(named: "active-notification"))
        
        return UINavigationController(rootViewController: notiVc)
    }
    
    func createProfileNavigationController() -> UINavigationController {
        let profileVc = ProfileViewController()
        profileVc.title = "Profile"
        profileVc.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "inactive-person"), selectedImage: UIImage(named: "active-person"))
        
        return UINavigationController(rootViewController: profileVc)
    }
}
