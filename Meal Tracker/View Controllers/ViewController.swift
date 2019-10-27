//
//  ViewController.swift
//  Meal Tracker
//
//  Created by Denis Bystruev on 27.10.2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // - View
    @IBOutlet var mealTableView: UITableView!
    
    // - Models
    var meals = Meal.all
    
    // - Managers
    let cellManager = CellManager()
    
}

// MARK: - UIViewController
extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        mealTableView.dataSource = self
    }
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mealTableView.dequeueReusableCell(withIdentifier: "Cell")!
        let meal = meals[indexPath.row]
        
        cellManager.configure(cell, with: meal)
        
        return cell
    }
}
