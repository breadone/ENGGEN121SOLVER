//
//  unitConverter.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 20/03/21.
//

import Foundation

func unitConverter() {
    Units.init() //need this here otherwise unitArray never gets populated
    let unitArray = Units.unitArray //array of all the units supported (see units.swift)
    var toConvert: singleUnit? = nil //input unit to convert
    var convertTo: singleUnit? = nil //output unit that has been converted
    
    print("unit converter for 140")
    print("use the form '<number><unit>-><unit>', where <unit> is an abbreviation, such as kg, lb, n, etc. **Dont** have any spaces anywhere")
    print("")
    
    let input: [Any] = inputParse("enter what you would like to convert: ", type: .units) as! [Any] //inputs the conversion and splits it into parts
    let convertValue = input[0] as! Float //the value to be converted
    let convertUnits = [input[1], input[2]] //both input and output units (0 is input, 1 is output)
    
    for i in 0...Units.unitArray.count - 1{
        if convertUnits[0] as! String == unitArray[i].abbreviation { //loops through unitArray to see if there is a match for abbreviations
            let u = unitArray[i]
            toConvert = singleUnit(value: convertValue, abbr: u.abbreviation, uType: u.uType, bU: u.bUValue) //uses the abbreviation to fill in the other details of the units
        }
        if convertUnits[1] as! String == unitArray[i].abbreviation {
            let u = unitArray[i]
            convertTo = singleUnit(abbr: u.abbreviation, uType: u.uType, bU: u.bUValue)
        }
    }
    
    let answer: String
    if toConvert?.uType == convertTo?.uType {
        let temp = ((convertTo?.bU)! / (toConvert?.bU)!) * (toConvert?.value)! //converting math 😎
        convertTo?.value = temp
        
        let lhs: String = "\( Double((toConvert?.value)!).roundToPlaces(toPlaces: Preferences.precision) )\( (toConvert?.abbr)! )"
        let rhs: String = "\( Double((convertTo?.value)!).roundToPlaces(toPlaces: Preferences.precision) )\( (convertTo?.abbr)! )"
        answer = "\(lhs) == \(rhs)"
    } else {
        answer = "cannot convert between units of type \((toConvert?.uType)!) and \((convertTo?.uType)!)"
    }
    

    answerOut(answer)
}
