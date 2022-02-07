//
//  ControllerJsonToString.swift
//  TestMetide
//
//  Created by Marco di Fresco on 04/02/22.
//

import UIKit
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

class ManagerApi {
    
    public func jsonToCountryTemp(complition: @escaping ([CountryTemp])->Void){
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
            semaphore.signal()
            do{
                let decoder: JSONDecoder = JSONDecoder.init()
                let countryTemp: [CountryTemp] = try decoder.decode([CountryTemp].self, from: data)
                complition(countryTemp)
              
            }
            catch let e {
                 print(e)
            }
        }
        task.resume()
        semaphore.wait()
    }
    
}


