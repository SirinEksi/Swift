//
//  HomeTableViewCell.swift
//  34-RealApp
//
//  Created by Çağdaş Ekşi on 19.01.2022.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var myTitle: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
