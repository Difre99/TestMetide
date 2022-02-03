//
//  ViewController.swift
//  TestMetide
//
//  Created by DEVELOPER on 02/02/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /*
     POST MAN ME LO DA IN OUTPUT
     import UIKit
     import Foundation
     #if canImport(FoundationNetworking)
     import FoundationNetworking
     #endif

     struct CountryTemp: Decodable{
         let code2l: String
         let name: String
         let flag: String
         let latitude: String?
         let longitude: String?
     }


     var semaphore = DispatchSemaphore (value: 0)

     var request = URLRequest(url: URL(string: "https://us-central1-job-interview-cfe5a.cloudfunctions.net/countries")!,timeoutInterval: Double.infinity)
     request.addValue("Basic ZGV2ZWxvcGVyOm1ldGlkZQ==", forHTTPHeaderField: "Authorization")

     request.httpMethod = "GET"
     var data1 : Data
     let task = URLSession.shared.dataTask(with: request) { data, response, error in
         guard let data = data else {
             print(String(describing: error))
             semaphore.signal()
             return
         }
         semaphore.signal()
         do{
             let decoder: JSONDecoder = JSONDecoder.init()
             let countryTemp: [CountryTemp] = try decoder.decode([CountryTemp].self, from: data)
             for c in countryTemp{
                 print(c.code2l)
             }
             

         }
         catch let e{
             print(e)
         }
         
     }
     task.resume()
     semaphore.wait()

     */


}

