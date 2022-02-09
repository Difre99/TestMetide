//
//  ViewController.swift
//  TestMetide
//
//  Created by DEVELOPER on 02/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var countryTest :[CountryTemp]?
    
    @IBOutlet weak var tblCountries:UITableView!
    
    var countries :[CountryTemp]?
    
    let userDefaults = UserDefaults()
    
    var managerApi = ManagerApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.countryTest = [CountryTemp]()
        self.countries = [CountryTemp]()
        self.managerApi.jsonToCountryTemp { (countryTemp) in
            self.countries?.removeAll()
            self.countries?.append(contentsOf: countryTemp)
            self.countries = sortCountries(countries: self.countries ?? [])
        }
    }
}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "list_cell", for: indexPath) as! ListTableViewCell
            
        cell.loadData(country: self.countries![indexPath.row])
        
        return cell
    }
}

extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        var message:String = ""
        
        if let code2l = self.countries?[indexPath.row].code2l{
            let userDafault = UserDefaults.standard
            message.removeAll()
            message = userDafault.string(forKey: code2l) ?? ""
        }
        
        let alert = UIAlertController(title: self.countries?[indexPath.row].name, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}

extension ViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

