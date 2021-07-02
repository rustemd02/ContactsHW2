
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var data: [ContactCellData] = [ContactCellData(name: "John Appleseed", number: "+17462341415", work: "Apple Inc.", description: "Hi! I'm an NPC", image: UIImage(systemName: "person") ?? UIImage()), ContactCellData(name: "Бэн Жаров", number: "+79174234636", work: "Команда Вигвамцева", description: "vk.com/vigvamcev", image: UIImage(systemName: "person") ?? UIImage()), ContactCellData(name: "Ева Маркова", number: "+79365826587", work: "Команда Вигвамцева", description: "vk.com/vigvamcev", image: UIImage(systemName: "person") ?? UIImage()), ContactCellData(name: "Катрен Грэн", number: "+79996375522", work: "Команда Вигвамцева", description: "vk.com/vigvamcev", image: UIImage(systemName: "person") ?? UIImage()), ContactCellData(name: "Рустам Шафин", number: "+79876664477", work: "Команда Вигвамцева", description: "vk.com/vigvamcev", image: UIImage(systemName: "person") ?? UIImage()), ContactCellData(name: "Света Карнешина", number: "+79176569032", work: "Команда Вигвамцева", description: "vk.com/vigvamcev", image: UIImage(systemName: "person") ?? UIImage()), ContactCellData(name: "Элеонора Вейдж", number: "+79990522265", work: "Команда Вигвамцева", description: "vk.com/vigvamcev", image: UIImage(systemName: "person") ?? UIImage())]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        guard let contactsViewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {return }
        
        contactsViewController.contact = data[indexPath.row]
        
        present(contactsViewController, animated: true)

    }
    
}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as? ContactTableViewCell else {return UITableViewCell()}
        cell.setData(contact: data[indexPath.row])
        return cell
    }
    
    
}

struct ContactCellData{
        let name: String
        let number: String
        let work: String
        var description: String
        let image: UIImage

    }


