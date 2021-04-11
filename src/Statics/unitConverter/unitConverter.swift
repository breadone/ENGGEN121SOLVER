//
//  unitConverter.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 20/03/21.
//

import Foundation

func unitConverter() {
    Units.init()
    let unitArray = Units.unitArray
    var toConvert: singleUnit? = nil
    var convertTo: singleUnit? = nil
    
    print("unit converter for 140")
    print("use the form '<number><unit>-><unit>', where <unit> is an abbreviation, such as kg, lb, n, etc. **Dont** have any spaces anywhere")
    print("")
    
    let input: [Any] = inputParse("enter what you would like to convert: ", type: .units) as! [Any]
    let convertValue = input[0] as! Float
    let convertUnits = [input[1], input[2]]
    
    for i in 0...Units.unitArray.count - 1{
        if convertUnits[0] as! String == unitArray[i].abbreviation {
            let u = unitArray[i]
            toConvert = singleUnit(value: convertValue, abbr: u.abbreviation, bU: u.bUValue)
        }
        if convertUnits[1] as! String == unitArray[i].abbreviation {
            let u = unitArray[i]
            convertTo = singleUnit(abbr: u.abbreviation, bU: u.bUValue)
        }
    }
    
    if toConvert?.bU == 1 {
        let temp = (toConvert?.value)! * (convertTo?.bU)!
        convertTo?.value = temp
    } else if convertTo?.bU == 1 {
        let temp = (toConvert?.value)! / (toConvert?.bU)!
        convertTo?.value = temp
    }
    
    let answer = "\((toConvert?.value)!)\((toConvert?.abbr)!) == \((convertTo?.value)!)\((convertTo?.abbr)!)"
    answerOut(answer)
}
