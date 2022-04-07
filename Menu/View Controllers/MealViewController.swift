//
//  ViewController.swift
//  Menu
//
//  Created by Татьяна on 05.04.2022.
//

import UIKit

class MealViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView! // Tied with view
    
    var meals: [Meal] = [] // Tied with model
    let cellController = CellController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        meals = DataManager.shared.loadMeals() // Initialized array
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ShowMealDetail" else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let meal = meals[indexPath.row]
        let mealDetailVC = segue.destination as! MealDetailViewController
        mealDetailVC.meal = meal
    }


}

