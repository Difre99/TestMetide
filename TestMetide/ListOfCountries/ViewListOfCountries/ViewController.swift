//
//  ViewController.swift
//  TestMetide
//
//  Created by DEVELOPER on 02/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tblCountries:UITableView!
    
    var countries :[CountryTemp]?
    
    let userDefaults = UserDefaults()
    
    var managerApi = ManagerApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.countries = [CountryTemp]()
        self.managerApi.jsonToCountryTemp { (countryTemp) in
            self.countries?.removeAll()
            self.countries?.append(contentsOf: countryTemp)
            self.countries = sortCountries(countries: self.countries ?? [])
            
            DispatchQueue.main.async { [weak self] in
                self?.tblCountries.reloadData()
              }
            
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
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NoteViewController") as! NoteViewController
        vc.country = countries![indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


