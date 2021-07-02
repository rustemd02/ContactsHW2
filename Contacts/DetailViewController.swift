

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameView: UILabel!
    @IBOutlet weak var numberView: UILabel!
    @IBOutlet weak var workView: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var contact: ContactCellData?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = contact?.image
        nameView.text = contact?.name
        numberView.text = contact?.number
        workView.text = contact?.work
        descriptionTextView.text = contact?.description

        // Do any additional setup after loading the view.
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
