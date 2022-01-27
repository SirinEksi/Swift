//
//  ViewController.swift
//  39-WeatherApp
//
//  Created by Çağdaş Ekşi on 27.01.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn.layer.cornerRadius = 6
        
    }
    //navigation controller sayfasını gizleme func kodu
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        textField.text = ""
        
    }
    
    
    
    @IBAction func btn(_ sender: UIButton) {
        
        //        kullanıcı şehir girmezse verilecek uyarı kodları
        
        let city = textField.text ?? ""
        
        if city.isEmpty {
            
            let alert = UIAlertController(title: "UYARI", message: "Lütfen şehir adı giriniz.", preferredStyle: .alert)
            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alert.addAction(cancelButton)
            self.present(alert, animated: true, completion: nil)
            
            
        }else{
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
            
            vc.city = city
            self.show(vc, sender: nil)
        }
        
        
        
        
    }
    
}

