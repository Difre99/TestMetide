//
//  ViewController.swift
//  TestMetide
//
//  Created by DEVELOPER on 02/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewCountryCell: UITableViewCell?
    @IBOutlet weak var tableViewCountry: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewCountry?.delegate = self
        //DA RIMETTERE CON CLASSE ESTESA, GUARDA PRIMA COME SVILUPPARE METODI
        //tableViewCountry?.dataSource = self
    }
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
    }
}

/*
extension ViewController : UITableViewDataSource {
    //NUM RIGHE
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    //CONTENUTO CELLA
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
}
*/

class TableViewCountry: UITableViewCell{
    
}
