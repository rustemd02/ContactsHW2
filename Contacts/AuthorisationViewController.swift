

import UIKit

class AuthorisationViewController: UIViewController {
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    let loginCorrect = "admin"
    let passwordCorrect = "admin"

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signInButtonAction (_ sender: UIButton){
            if login.text == loginCorrect && password.text == passwordCorrect {
                guard let signIn = storyboard?.instantiateViewController(withIdentifier: "ViewController") else { return  }
                navigationController?.pushViewController(signIn, animated: true)
            }        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
