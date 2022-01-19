//
//  DetailViewController.swift
//  33-StarApp
//
//  Created by Çağdaş Ekşi on 18.01.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var acıklamaLabel: UILabel!
    
    
    var userDetail = User()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        myLabel.text = userDetail.firstname + "" + userDetail.lastname
        myImageView.image = userDetail.picture
        acıklamaLabel.text = userDetail.acıklama 
        
        
    }
    
    
    
    
}
