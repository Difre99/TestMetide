//
//  TableViewCell.swift
//  TestMetide
//
//  Created by Marco di Fresco on 06/02/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    //NON RIESCO A COLLEGARE OUTLET
    @IBOutlet weak var titleLbl: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
