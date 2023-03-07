//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Juliana Nielson on 3/7/23.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        var breakfast = Meal(name: "Breakfast", food: [Food(name: "Eggs", description: "Sunny side up!"), Food(name: "Bacon", description: "Fresh from the pan!"), Food(name: "Pancakes", description: "Buttermilk with extra syrup.")])
        var lunch = Meal(name: "Lunch", food: [Food(name: "BLT Sandwich", description: "Bacon, Lettuce, and Tomato."), Food(name: "Milk", description: "2%!")])
        var dinner = Meal(name: "Dinner", food: [Food(name: "Pork Chops", description: "Homemade seasoning!"), Food(name: "Mashed Potatoes", description: "From scratch!"), Food(name: "Gravy", description: "For the potatoes, and maybe also the meat.")])
        return [breakfast, lunch, dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return meals[section].food.count
    }
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
         
         let meal = meals[indexPath.section]
         let food = meal.food[indexPath.row]
         
         var content = cell.defaultContentConfiguration()
         content.text = food.name
         content.secondaryText = food.description
         cell.contentConfiguration = content
     
         return cell
     }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
}
