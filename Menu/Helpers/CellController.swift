//
//  CellController.swift
//  Menu
//
//  Created by Татьяна on 05.04.2022.
//

import Foundation
import UIKit

class CellController {
    
    func configure(_ cell: UITableViewCell, with meal: Meal) {
        var content = cell.defaultContentConfiguration()
        content.text = meal.name
        content.secondaryText = meal.ratingBar
        content.image = meal.image
        content.imageProperties.maximumSize = CGSize(width: 60, height: 60)
        cell.contentConfiguration = content
        
    }
    
    
}
