//
//  ViewController.swift
//  33-StarApp
//
//  Created by Çağdaş Ekşi on 18.01.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var myTableViev: UITableView!
    
    var users = [User]()
    var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let row = users[indexPath.row]
        user = row
        
        cell.textLabel?.text = row.firstname + " " + row.lastname
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let row = users[indexPath.row]
        user = row
        
        self.performSegue(withIdentifier: "toDetail", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            
            
            let desVc = segue.destination as! DetailViewController
            desVc.userDetail = self.user
            
            
        }
    }
    
    
    
    func loadData () {
        
        let user1 = User()
        user1.firstname = "Norman"
        user1.lastname = "Reedus"
        user1.picture = UIImage(named:"norman")!
        users.append(user1)
        
        let user2 = User()
        user2.firstname = "Lauren"
        user2.lastname = "Cohan"
        user2.picture = UIImage(named:"lauren")!
        users.append(user2)
        
        let user3 = User()
        user3.firstname = "Emily"
        user3.lastname = "Kinney"
        user3.picture = UIImage(named:"emily")!
        users.append(user3)
        
        
        let user4 = User()
        user4.firstname = "Chandler"
        user4.lastname = "Rigss"
        user4.picture = UIImage(named:"chandler")!
        users.append(user4)
        
        let user5 = User()
        user5.firstname = "Andrew"
        user5.lastname = "Lincoln"
        user5.picture = UIImage(named:"andrew")!
        users.append(user5)
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
}

