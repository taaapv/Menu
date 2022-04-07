//
//  MealDetailViewController.swift
//  Menu
//
//  Created by Татьяна on 08.04.2022.
//

import UIKit

class MealDetailViewController: UIViewController {

    @IBOutlet weak var mealStackView: UIStackView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mealRatingLabel: UILabel!
    @IBOutlet weak var mealNotesLabel: UILabel!
    @IBOutlet weak var mealDateLabel: UILabel!
    
    var meal: Meal!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(with: view.bounds.size)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        updateUI(with: size)
    }
}

