//
//  Meal.swift
//  Meal Tracker
//
//  Created by Denis Bystruev on 27.10.2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

// MARK: - Main Model
struct Meal {
    var name: String
    var photo: UIImage
    var notes: String
    var rating: Int
    var timestamp: Date
}

// MARK: - Model Extension
extension Meal {
    static var all: [Meal] {
        return [
            Meal(name: "Каша", photo: UIImage(named: "porrige")!, notes: "", rating: 5, timestamp: Date()),
            Meal(name: "Суп", photo: UIImage(named: "soup")!, notes: "", rating: 3, timestamp: Date()),
        ]
    }
    
    var stars: String {
        return String(repeating: "⭐️", count: rating)
    }
}
