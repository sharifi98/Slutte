//
//  Snus.swift
//  Slutte
//
//  Created by Hossein Sharifi on 13/12/2023.
//

import Foundation

struct Snus {
    var numberOfSnusPerDay: Int = 22
    var pricePerPackage: Int = 84
    var piecesPerPackage: Int = 24
    
    init(numberOfSnusPerDay: Int, pricePerPackage: Int, piecesPerPackage: Int) {
        self.numberOfSnusPerDay = numberOfSnusPerDay
        self.pricePerPackage = pricePerPackage
        self.piecesPerPackage = piecesPerPackage
    }
    

}
