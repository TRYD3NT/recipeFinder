import Foundation
import UIKit

var mealViewModel: [MealViewModel] = [] 

class MealViewModel {
    private let mealDataModel : Meal
    
    private var mealName : String
    private var mealImage : UIImage
    private var mealInstructions : String
    private var ingredient1 : String
    private var ingredient2 : String
    private var ingredient3 : String
    private var ingredient4 : String
    private var ingredient5 : String
    private var ingredient6 : String
    private var ingredient7 : String
    private var ingredient8 : String
    private var ingredient9 : String
    private var ingredient10 : String
    private var ingredient11 : String
    private var ingredient12 : String
    private var ingredient13 : String
    private var ingredient14 : String
    private var ingredient15 : String
    private var ingredient16 : String
    private var ingredient17 : String
    private var ingredient18 : String
    private var ingredient19 : String
    private var ingredient20 : String
    private var measure1 : String
    private var measure2 : String
    private var measure3 : String
    private var measure4 : String
    private var measure5 : String
    private var measure6 : String
    private var measure7 : String
    private var measure8 : String
    private var measure9 : String
    private var measure10 : String
    private var measure11 : String
    private var measure12 : String
    private var measure13 : String
    private var measure14 : String
    private var measure15 : String
    private var measure16 : String
    private var measure17 : String
    private var measure18 : String
    private var measure19 : String
    private var measure20 : String
    
    
    init(mealDataModel: Meal, img : UIImage) {
        self.mealDataModel = mealDataModel
        self.mealName = mealDataModel.strMeal
        self.mealInstructions = mealDataModel.strInstructions
        self.mealImage = img
        self.ingredient1 = mealDataModel.strIngredient1 ?? ""
        self.ingredient2 = mealDataModel.strIngredient2 ?? ""
        self.ingredient3 = mealDataModel.strIngredient3 ?? ""
        self.ingredient4 = mealDataModel.strIngredient4 ?? ""
        self.ingredient5 = mealDataModel.strIngredient5 ?? ""
        self.ingredient6 = mealDataModel.strIngredient6 ?? ""
        self.ingredient7 = mealDataModel.strIngredient7 ?? ""
        self.ingredient8 = mealDataModel.strIngredient8 ?? ""
        self.ingredient9 = mealDataModel.strIngredient9 ?? ""
        self.ingredient10 = mealDataModel.strIngredient10 ?? ""
        self.ingredient11 = mealDataModel.strIngredient11 ?? ""
        self.ingredient12 = mealDataModel.strIngredient12 ?? ""
        self.ingredient13 = mealDataModel.strIngredient13 ?? ""
        self.ingredient14 = mealDataModel.strIngredient14 ?? ""
        self.ingredient15 = mealDataModel.strIngredient15 ?? ""
        self.ingredient16 = mealDataModel.strIngredient16 ?? ""
        self.ingredient17 = mealDataModel.strIngredient17 ?? ""
        self.ingredient18 = mealDataModel.strIngredient18 ?? ""
        self.ingredient19 = mealDataModel.strIngredient19 ?? ""
        self.ingredient20 = mealDataModel.strIngredient20 ?? ""
        self.measure1 = mealDataModel.strMeasure1 ?? ""
        self.measure2 = mealDataModel.strMeasure2 ?? ""
        self.measure3 = mealDataModel.strMeasure3 ?? ""
        self.measure4 = mealDataModel.strMeasure4 ?? ""
        self.measure5 = mealDataModel.strMeasure5 ?? ""
        self.measure6 = mealDataModel.strMeasure6 ?? ""
        self.measure7 = mealDataModel.strMeasure7 ?? ""
        self.measure8 = mealDataModel.strMeasure8 ?? ""
        self.measure9 = mealDataModel.strMeasure9 ?? ""
        self.measure10 = mealDataModel.strMeasure10 ?? ""
        self.measure11 = mealDataModel.strMeasure11 ?? ""
        self.measure12 = mealDataModel.strMeasure12 ?? ""
        self.measure13 = mealDataModel.strMeasure13 ?? ""
        self.measure14 = mealDataModel.strMeasure14 ?? ""
        self.measure15 = mealDataModel.strMeasure15 ?? ""
        self.measure16 = mealDataModel.strMeasure16 ?? ""
        self.measure17 = mealDataModel.strMeasure17 ?? ""
        self.measure18 = mealDataModel.strMeasure18 ?? ""
        self.measure19 = mealDataModel.strMeasure19 ?? ""
        self.measure20 = mealDataModel.strMeasure20 ?? ""
    }
    
    func getName() -> String {
        return mealName
    }
    
    func getImage() -> UIImage {
        return mealImage
    }
    
    func getInstructions() -> String {
        return mealInstructions
    }
    
    func getIngredients() -> [String] {
        var strIngredients : [String] = []
        strIngredients.append(ingredient1 + " " + measure1)
        strIngredients.append(ingredient2 + " " + measure2)
        strIngredients.append(ingredient3 + " " + measure3)
        strIngredients.append(ingredient4 + " " + measure4)
        strIngredients.append(ingredient5 + " " + measure5)
        strIngredients.append(ingredient6 + " " + measure6)
        strIngredients.append(ingredient7 + " " + measure7)
        strIngredients.append(ingredient8 + " " + measure8)
        strIngredients.append(ingredient9 + " " + measure9)
        strIngredients.append(ingredient10 + " " + measure10)
        strIngredients.append(ingredient11 + " " + measure11)
        strIngredients.append(ingredient12 + " " + measure12)
        strIngredients.append(ingredient13 + " " + measure13)
        strIngredients.append(ingredient14 + " " + measure14)
        strIngredients.append(ingredient15 + " " + measure15)
        strIngredients.append(ingredient16 + " " + measure16)
        strIngredients.append(ingredient17 + " " + measure17)
        strIngredients.append(ingredient18 + " " + measure18)
        strIngredients.append(ingredient19 + " " + measure19)
        strIngredients.append(ingredient20 + " " + measure20)

        return strIngredients
    }
}
