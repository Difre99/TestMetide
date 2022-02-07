//
//  TableViewCell.swift
//  TestMetide
//
//  Created by Marco di Fresco on 07/02/22.
//

import UIKit
// FATTO COPIA E INCOLLA MA NON HO FATTO ANCORA OUTLET
class TableViewCell: UITableViewCell {
    @IBOutlet weak var titleLbl: UILabel!
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
    }
}
