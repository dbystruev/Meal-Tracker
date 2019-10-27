//
//  CellManager.swift
//  Meal Tracker
//
//  Created by Denis Bystruev on 27.10.2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class CellManager {
    func configure(_ cell: UITableViewCell, with meal: Meal) {
        cell.textLabel?.text = meal.name
        cell.detailTextLabel?.text = meal.stars
        cell.imageView?.image = meal.photo
    }
}
