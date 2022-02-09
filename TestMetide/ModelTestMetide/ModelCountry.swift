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
    var index: Int?
}

struct Country{
    var code2l: String
    var name: String
    var flag: URL
    var latitude: Double?
    var longitude: Double?
    var distMetide: Double?
}
