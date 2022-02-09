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
    @IBOutlet weak var inputText: UITextField!
    
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
        txtField()
        code2l = country.code2l
    }
    
    public func txtField(){
        self.inputText.returnKeyType = .done
        self.inputText.autocorrectionType = .no
        self.inputText.becomeFirstResponder()
        self.inputText.delegate = self
        print(self.code2l)
        if let code2l = code2l {
            let userDafault = UserDefaults.standard
            self.inputText.text = userDafault.string(forKey: code2l)
            print("text input="+userDafault.string(forKey: code2l)!)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //FUNZIONA
        let text = textField.text
        if let code2l = code2l {
            let userDefault = UserDefaults.standard
            userDefault.set(textField.text, forKey: code2l)
        }
        textField.resignFirstResponder()
        return true
    }
}
