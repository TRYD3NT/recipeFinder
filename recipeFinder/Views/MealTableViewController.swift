//
//  ViewController.swift
//  recipeFinder
//
//  Created by user221845 on 10/14/22.
//

import UIKit

class MealTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var mealTableView: UITableView!
    
    @IBOutlet weak var mealName: UILabel!
    
    @IBOutlet weak var mealInstructions: UILabel!
    
    var selectedMeal : MealViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mealName.text = selectedMeal.getName()
        mealInstructions.text = selectedMeal.getInstructions()
        mealInstructions.sizeToFit()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var i = 0
        for ingredient in selectedMeal.getIngredients() {
            if (ingredient.trimmingCharacters(in: .whitespaces) != "") {
                i = i + 1
            }
            else {
                break
            }
        }
        return i
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myStringList = selectedMeal.getIngredients()
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MealTableViewCell
        tableViewCell.mealIngredient.text = myStringList[indexPath.row]
        tableViewCell.mealIngredient.sizeToFit()
        
        return tableViewCell
    }
    
}

