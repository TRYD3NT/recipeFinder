import UIKit

class MealCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var searchInput = ""
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var mealCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.text = searchInput
        fetchData(input: searchInput) { data in mealViewModel
            DispatchQueue.main.async {
                self.mealCollectionView.reloadData()
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mealViewModel.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! MealCollectionViewCell
        collectionViewCell.mealLabel.text = mealViewModel[indexPath.row].getName()
        collectionViewCell.mealLabel.sizeToFit()
        collectionViewCell.mealImage.image = mealViewModel[indexPath.row].getImage()
        
        return collectionViewCell
    }
    
    
    @IBAction func searchPressed(_ sender: Any) {
        mealViewModel.removeAll()
        searchInput = searchTextField.text!
        mealCollectionView.reloadData()
        self.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "instructionSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "instructionSegue") {
            let indexPath = self.mealCollectionView.indexPathsForSelectedItems?.first
            
            let mealInstruction = segue.destination as? MealTableViewController
            let selectedMeal = mealViewModel[indexPath!.item]
            mealInstruction?.selectedMeal = selectedMeal
        }
    }
}
    

