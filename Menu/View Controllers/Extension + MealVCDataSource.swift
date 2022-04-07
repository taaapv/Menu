//
//  Extension + MealVCDataSource.swift
//  Menu
//
//  Created by Татьяна on 05.04.2022.
//

import Foundation
import UIKit

extension MealViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath)
        
        let meal = meals[indexPath.row]
        cellController.configure(cell, with: meal)
        
        return cell
    }
    
    
    
}
