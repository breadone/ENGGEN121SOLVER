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
    var convertType: unitType = .distance //just to make xc shut up
    let convertTypeInput = Int(input("\(unitList)\nwhat type of unit you want to convert: "))
    print("use the form '<number><unit>-><unit>', where <unit> is an abbreviation, such as kg, lb, N, etc. **Dont** have any spaces anywhere")
    
    let inn = inputParse("enter what you would like to convert: ", type: .units)
    print(inn)
    return
    
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
        for i in 0...Units.distanceArray.count - 1 {
            print(Units.distanceArray[i].abbreviation)
        }
    case .mass:
        for i in 0...Units.massArray.count - 1 {
            print(Units.massArray[i].abbreviation)
        }
    case .energy:
        for i in 0...Units.energyArray.count - 1 {
            print(Units.energyArray[i].abbreviation)
        }
    }
    
    //let unitIn = input("what unit do you want to convert from: ")
    
}
