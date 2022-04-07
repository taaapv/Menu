//
//  Extension + MealDetailVC.swift
//  Menu
//
//  Created by Татьяна on 08.04.2022.
//

import Foundation
import UIKit

extension MealDetailViewController {
    
    func updateUI(with size: CGSize) {
        
        let isVertical = size.width < size.height
        mealStackView.axis = isVertical ? .vertical : .horizontal
        
        title = meal.name
        imageView.image = meal.image
        mealRatingLabel.text = meal.ratingBar
        mealNotesLabel.text = meal.notes
        mealDateLabel.text = meal.currentDate
    }
}
