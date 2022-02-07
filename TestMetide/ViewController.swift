//
//  ViewController.swift
//  TestMetide
//
//  Created by DEVELOPER on 02/02/2022.
//

import UIKit

class ViewController: UIViewController {
    //CELLA NON CONNESSA PERCHé DA ERRORE
    var country :[String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareData()
    }
    func prepareData(){
        self.country = ["Italia", "Germania", "Olanda"]
    }
}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return country.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "list_cell", for: indexPath) as! ListTableViewCell
            
        cell.titleLbl.text = self.country[indexPath.row]
            
        return cell
    }
}

extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let alert = UIAlertController(title: "Country scelto", message: self.country[indexPath.row], preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}

