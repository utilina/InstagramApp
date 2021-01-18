//
//  MainTabController.swift
//  InstagramApp
//
//  Created by Улитина Анастасия Сергеевна on 18.01.2021.
//

import UIKit

class MainTabController: UITabBarController {

	// MARK: - Lyfecycle

	override func viewDidLoad() {
		super.viewDidLoad()
		configureViewControllers()
	}

	func configureViewControllers() {
		view.backgroundColor = .white

		let feed = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "home_unselected"), selectedImage: #imageLiteral(resourceName: "home_selected") , rootViewController: FeedController())

		let search = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "search_unselected"), selectedImage: #imageLiteral(resourceName: "search_selected") , rootViewController: SearchController())

		let imageSelector = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "plus_unselected"), selectedImage: #imageLiteral(resourceName: "plus_unselected") , rootViewController: ImageSelectorController())

		let notification = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "like_unselected"), selectedImage: #imageLiteral(resourceName: "like_selected") , rootViewController: NotificationController())

		let profile = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "profile_unselected"), selectedImage: #imageLiteral(resourceName: "profile_selected") , rootViewController: ProfileController())

		viewControllers = [feed, search, imageSelector, notification, profile]
		tabBar.barTintColor = .white
		tabBar.tintColor = .black

	}

	func templateNavigationController(unselectedImage: UIImage, selectedImage: UIImage, rootViewController: UIViewController) -> UINavigationController {
		let nav = UINavigationController(rootViewController: rootViewController)
		nav.tabBarItem.image = unselectedImage
		nav.tabBarItem.selectedImage = selectedImage
		nav.navigationBar.tintColor = .black
		nav.navigationBar.barTintColor = .white
		return nav
	}
}
