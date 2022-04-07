//
//  Meal.swift
//  Menu
//
//  Created by Татьяна on 05.04.2022.
//

import Foundation
import UIKit

struct Meal {
    let name: String
    let image: UIImage
    let notes: String
    let rating: Int
    let date: Date
    
    var ratingBar: String {
        return String(repeating: "⭐️", count: rating)
    }
    
    var currentDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        return dateFormatter.string(from: date)
    }
}
