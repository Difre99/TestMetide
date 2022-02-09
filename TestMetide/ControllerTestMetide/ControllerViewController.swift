//
//  ControllerViewController.swift
//  TestMetide
//
//  Created by Marco di Fresco on 07/02/22.
//

import Foundation
import UIKit

let metideLat: Double = 45.510670959658505
let metideLong: Double = 12.23438279075628

//PROBABILMENTE HO SBAGLIATO I CALCOLI
func distGeog (latA: Double, lonA: Double) -> Double{
    let r: Double = 6371
    let latAlfa = .pi+latA/180
    let lonAlfa = .pi+lonA/180
    let latBeta = .pi+metideLat/180
    let lonBeta = .pi+metideLong/180
    
    let fi = fabs(lonAlfa-lonBeta)
    let p = acos(sin(latBeta)*sin(latAlfa)+cos(latBeta)*cos(latAlfa)*cos(fi))
    return p*r
}

func sortCountries (countries:[CountryTemp]) -> [CountryTemp]{
    var newCountries:[CountryTemp] = countries
    var i = 0
    newCountries.sort { countryA, countryB in
      let latCountryA = Double(countryA.latitude ?? "0") ?? 0.0
      let longCountryA = Double(countryA.longitude ?? "0") ?? 0.0
      let latCountryB = Double(countryB.latitude ?? "0") ?? 0.0
      let longCountryB = Double(countryB.longitude ?? "0") ?? 0.0
      return distGeog(latA: latCountryA , lonA: longCountryA) < distGeog(latA: latCountryB, lonA: longCountryB)
    }
    return newCountries
}


