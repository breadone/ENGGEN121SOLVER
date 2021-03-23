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
    var convertType: unitType = .distance //just to make xc shut up
    let convertTypeInput = Int(input("\(unitList)\nwhat type of unit you want to convert: "))
    
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
    
    switch convertType {
    case .distance:
        for i in 0...units.distanceArray.count - 1 {
            print(units.distanceArray[i].abbreviation)
        }
    case .mass:
        for i in 0...units.massArray.count - 1 {
            print(units.massArray[i].abbreviation)
        }
    case .energy:
        for i in 0...units.energyArray.count - 1 {
            print(units.energyArray[i].abbreviation)
        }
    }
    let unitIn = input("what unit do you want to convert from: ")
    
}
