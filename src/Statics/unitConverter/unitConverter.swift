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
    Units.init()
    let unitArray = Units.unitArray
    let toConvert: singleUnit
    
    print("unit converter for 140")
    print("use the form '<number><unit>-><unit>', where <unit> is an abbreviation, such as kg, lb, n, etc. **Dont** have any spaces anywhere")
    
    let input: [Any] = inputParse("enter what you would like to convert: ", type: .units) as! [Any]
    let convertValue = input[0]
    let convertUnits = [input[1], input[2]]
    print(convertUnits)
    
    for i in 0...Units.unitArray.count - 1{
        if String(convertUnits[0] as! String) == unitArray[i].abbreviation {
            print(unitArray[i].name)
            break
        }
//        print("unit \(convertUnits[0]) not found")
    }
    
}
