//
//  ControllerViewController.swift
//  TestMetide
//
//  Created by Marco di Fresco on 07/02/22.
//

import Foundation
import UIKit

func distGeog (latA: Double, lonA: Double, latB: Double, lonB: Double) -> Double{
    let r: Double = 6371
    let latAlfa = .pi+latA/180
    let lonAlfa = .pi+lonA/180
    let latBeta = .pi+latB/180
    let lonBeta = .pi+lonB/180
    
    let fi = fabs(lonAlfa-lonBeta)
    let p = acos(sin(latBeta)*sin(latAlfa)+cos(latBeta)*cos(latAlfa)*cos(fi))
    return p*r
}

func sortCountries (countries:[CountryTemp]){
    let metideLat: Double = 45.510670959658505
    let metideLong: Double = 12.23438279075628
    
}

