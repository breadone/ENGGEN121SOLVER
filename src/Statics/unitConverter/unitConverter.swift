//
//  unitConverter.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 20/03/21.
//

import Foundation

let unitList: String = """
1. distance
2. mass
3. energy
"""

func unitConverter() {
    let units = Units()
    var convertType: unitType
    let convertTypeInput = Int(input("\(unitList)\nenter what type of unit you want to convert: "))
    
    switch convertTypeInput {
    case 1:
        convertType = .distance
    case 2:
        convertType = .mass
    case 3:
        convertType = .energy
    default:
        print("no")
    }
    
    for i in 0...units.massArray.count - 1 {
        print(units.massArray[i].abbreviation)
    }
    let test = input("what unit do you want to convert from: ")

    
}
