
import UIKit

class FirstViewController: UIViewController {
  /*
  TODO one: hook up a button in interface builder to a new action (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
  
  TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW action (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    
  TODO three: Hook up the button to a NEW action (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    
  TODO four: Hook up the button to a NEW action (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
  */
    
    
    
  
    @IBOutlet weak var canDoLabel: UILabel!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var whatElseLabel: UILabel!
    
    @IBAction func submitBtn(sender: AnyObject) {
        var username:String = nameTextField.text!
        var age:String = ageTextField.text!
        
        resultLabel.text = "Hello world! Hello "
            + username + ", you are " + age + " years old!"
   
    
        var ageInput = Int(age)
        if (ageInput >= 21){
            canDoLabel.text = "You can drink"
        }else if (ageInput >= 18) {
            canDoLabel.text = "You can vote"
        }else if (ageInput >= 16) {
            canDoLabel.text = "You can drive"
        }else {
            canDoLabel.text = "Sorry, you can't..."
        }
    
        
        if(ageInput>=21) {
            whatElseLabel.text = " You can vote, drink, drive (but not at the same time!)"
        } else if (ageInput >= 18){
            whatElseLabel.text = "You can drive & vote"
        } else if (ageInput >= 16){
            whatElseLabel.text = "You can drive"
        } else {
            whatElseLabel.text = "Sorry, you can't..."
        }
    
    
    }
    
    
}
