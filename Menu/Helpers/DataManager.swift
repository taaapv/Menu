//
//  DataManager.swift
//  Menu
//
//  Created by Татьяна on 05.04.2022.
//

import Foundation
import UIKit

class DataManager {
    
    static let shared = DataManager() // Singleton
    
    func loadMeals() -> [Meal] {
        let meals = [
            Meal(name: "First course",
                 image: #imageLiteral(resourceName: "First"),
                 notes: "Soup",
                 rating: 7,
                 date: Date()),
            Meal(name: "Main course",
                 image: #imageLiteral(resourceName: "Second"),
                 notes: "Pilof",
                 rating: 9,
                 date: Date()),
            Meal(name: "Dessert",
                 image: #imageLiteral(resourceName: "Third"),
                 notes: "Ice cream",
                 rating: 5,
                 date: Date())
        ]
        return meals
    }
}
