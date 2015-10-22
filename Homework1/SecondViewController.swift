
import UIKit

class SecondViewController: UIViewController {
  
  //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    
    
    
    @IBOutlet weak var numTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func addBtn(sender: AnyObject) {
        var result:Int = Int(resultLabel.text!)! + Int(numTextField.text!)!
        resultLabel.text = String(result)
        
    }
    
    
    
    
    
}
