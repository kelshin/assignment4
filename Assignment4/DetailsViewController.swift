//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Kelbin David on 2022-01-06.
//  Copyright © 2022 Derrick Park. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var city: City!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  .white
        
        let backButt = UIBarButtonItem()
        backButt.title = city.icon.uppercaseFirstLetter()
        navigationController?.navigationBar.topItem?.backBarButtonItem = backButt
        
        let countryLabel = UILabel()
        countryLabel.text = "Country"
        countryLabel.textAlignment = .center
        countryLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 15)
        
        let countryName = UILabel()
        switch city.icon {
        case "canada":
            countryName.text = "🇨🇦"
        case "italy":
            countryName.text = "🇮🇹"
        case "japan":
            countryName.text = "🇯🇵"
        case "brazil":
            countryName.text = "🇧🇷"
        case "skorea":
            countryName.text = "🇰🇷"
        default:
            countryName.text = ""
        }
        
        countryName.textAlignment = .center
        countryName.font = UIFont(name: "Helvetica Neue", size: 20)
        
        let cityLabel = UILabel()
        cityLabel.text = "City"
        cityLabel.textAlignment = .center
        cityLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 15)
        
        let cityName = UILabel()
        cityName.text = city.name
        cityName.textAlignment = .center
        cityName.font = UIFont(name: "Helvetica Neue", size: 20)
        
        let tempLabel = UILabel()
        tempLabel.text = "Temperature"
        tempLabel.textAlignment = .center
        tempLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 15)
        
        let temperatureLabel = UILabel()
        temperatureLabel.text = String(city.temp)
        temperatureLabel.textAlignment = .center
        temperatureLabel.font = UIFont(name: "Helvetica Neue", size: 20)
        
        let sumLabel = UILabel()
        sumLabel.text = "Summary"
        sumLabel.textAlignment = .center
        sumLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 15)
        
        let summaryLabel = UILabel()
        summaryLabel.text = city.summary
        summaryLabel.textAlignment = .center
        summaryLabel.font = UIFont(name: "Helvetica Neue", size: 20)
        
        
        
        var labelsArray = [UILabel]()
        labelsArray = [countryLabel, countryName, cityLabel, cityName, tempLabel, temperatureLabel, sumLabel, summaryLabel]
        
        let verticalStackView = UIStackView(arrangedSubviews: labelsArray)
            verticalStackView.translatesAutoresizingMaskIntoConstraints = false
            verticalStackView.axis = .vertical
            verticalStackView.distribution = .equalSpacing
            view.addSubview(verticalStackView)
        
        NSLayoutConstraint.activate([
            verticalStackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.60),
            verticalStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            verticalStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    }
}

extension String {
    func uppercaseFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
}
