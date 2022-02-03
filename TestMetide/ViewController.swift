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

     struct Country{
         let code2l: String
         let code3l: String
         let enabled: Bool
         let flag: URL
         let id: Int
         let latitude: Float
         let longitude: Float
         let name: String
         let name_official: String
         let zoom: Int
     }
     var semaphore = DispatchSemaphore (value: 0)

     var request = URLRequest(url: URL(string: "https://us-central1-job-interview-cfe5a.cloudfunctions.net/countries")!,timeoutInterval: Double.infinity)
     request.addValue("Basic ZGV2ZWxvcGVyOm1ldGlkZQ==", forHTTPHeaderField: "Authorization")

     request.httpMethod = "GET"

     let task = URLSession.shared.dataTask(with: request) { data, response, error in
         guard let data = data else {
             print(String(describing: error))
             semaphore.signal()
             return
         }
         
         //print(String(data: data, encoding: .utf8)!)
         if let json = try? JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed) {
             //print((json as? Array<Any>)?[0])
             
         }
         
        
         semaphore.signal()
     }



     task.resume()
     semaphore.wait()

     */


}

