//
//  units.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 20/03/21.
//

import Foundation

class Unit {
    let name: String
    let abbreviation: String
    let uType: unitType
    let bUValue: Float
    
    init(name: String, abbreviation: String, uType: unitType, bU: Float) {
        self.name = name
        self.abbreviation = abbreviation
        self.uType = uType
        self.bUValue = bU
    }
    
    enum unitType: String { //TODO: add more of these
        case mass
        case volume
    }
}

struct Units {
    let g = Unit(name: "gram", abbreviation: "g", uType: .mass, bU: 10)
    
}
