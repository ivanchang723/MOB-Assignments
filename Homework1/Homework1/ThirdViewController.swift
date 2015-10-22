
import UIKit

class ThirdViewController: UIViewController {
  /*
  TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.
  
  */
    
    
    @IBOutlet weak var inputTextfield: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateBtn(sender: AnyObject) {
        var inputNum:Int = Int(inputTextfield.text!)!
        
        if (inputNum % 2 == 0){
            resultLabel.text = "Is even"
        } else {
            resultLabel.text = "Is not even"
        }
    
    }
    
    
}
