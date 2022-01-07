//
//  ViewController.swift
//  Assignment3
//
//  Created by Derrick Park on 2018-10-04.
//  Copyright © 2018 Derrick Park. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {

	var city: City!

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = #colorLiteral(red: 0.9725490212, green: 0.9725491405, blue: 0.9725490212, alpha: 1)
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
        
        let appearanceTab = UITabBarAppearance()
        appearanceTab.configureWithOpaqueBackground()
        appearanceTab.backgroundColor = #colorLiteral(red: 0.9725490212, green: 0.9725491405, blue: 0.9725490212, alpha: 1)
        tabBarController?.tabBar.standardAppearance = appearanceTab
        if #available(iOS 15.0, *) {
            tabBarController?.tabBar.scrollEdgeAppearance = tabBarController?.tabBar.standardAppearance
        } else {
            // Fallback on earlier versions
        }
        
		let cityLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 150, y: view.bounds.height / 2 - 200, width: 300, height: 50))
		cityLabel.text = city.name
		cityLabel.textAlignment = .center
		cityLabel.font = UIFont(name: "Helvetica Neue", size: 50)
		
		let butt = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 - 25, width: 200, height: 50))
		butt.backgroundColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
		butt.setTitle("See Details...", for: .normal)
		butt.layer.cornerRadius = 10.0
		butt.addTarget(self, action: #selector(showWeatherDetails), for: .touchUpInside)
		
		view.addSubview(cityLabel)
		view.addSubview(butt)
	}
    
  @objc func showWeatherDetails() {
      print(#function)
      let detailsViewController = DetailsViewController()
      detailsViewController.city = city.name
      detailsViewController.temperature = city.temp
      detailsViewController.country = city.icon
      detailsViewController.summary = city.summary
      self.navigationController?.pushViewController(detailsViewController, animated: true)
  }
}

