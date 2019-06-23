
import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func login(_ sender: Any) {
        
        let email: String = username.text!
        let pwd: String = password.text!
        
        Auth.auth().signIn(withEmail: email, password: pwd) { [weak self] user, error in
        
            if let error = error{
                self?.result.text = "Wrong";
                return;
            }
            
            else{
                self?.result.text = "Sucess";
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

