//
//  ListTableViewCell.swift
//  TestMetide
//
//  Created by Marco di Fresco on 07/02/22.
//

import UIKit

class ListTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var imageFlag: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    var code2l:String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadData(country:CountryTemp){
        self.titleLbl.text = country.name
        let url = URL(string:country.flag)
        if let data = try? Data(contentsOf: url!)
            {
            let image: UIImage = UIImage(data: data)!
            self.imageFlag.image = image
            }
        code2l = country.code2l
    }
}
