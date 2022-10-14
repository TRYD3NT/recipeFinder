import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func searchPressed(_ sender: Any) {
       performSegue(withIdentifier: "goToCollectionView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToCollectionView" {
            let destinationVC = segue.destination as? MealCollectionViewController
            if let searchInput = searchTextField.text {
                destinationVC?.searchInput = searchInput
            }
        }
        
    }
    
}

