//
//  Model.swift
//  TestMetide
//
//  Created by Marco di Fresco on 04/02/22.
//

import Foundation

struct CountryTemp: Decodable{
    var code2l: String
    var name: String
    let flag: String
    let latitude: String?
    let longitude: String?
}

struct Country{
    let code2l: String
    let name: String
    let flag: URL
    let latitude: Float?
    let longitude: Float
}
