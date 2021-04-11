//
//  unitConverter.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 20/03/21.
//

import Foundation

func unitConverter() {
    Unit.populateArray() //need this here otherwise unitArray never gets populated
    let unitArray = Unit.all //array of all the units supported (see units.swift)
    var toConvert: singleUnit? = nil //input unit to convert
    var convertTo: singleUnit? = nil //output unit that has been converted
    
    print("unit converter for 140")
    print("use the form '<number><unit>-><unit>', where <unit> is an abbreviation, such as kg, lb, n, etc. **Dont** have any spaces anywhere")
    print("")
    
    let input: [Any] = inputParse("enter what you would like to convert: ", type: .units) as! [Any] //inputs the conversion and splits it into parts
    let convertValue = input[0] as! Double //the value to be converted
    let convertUnits = [input[1], input[2]] //both input and output units (0 is input, 1 is output)
    
    var flag1 = false, flag2 = false
    for i in 0...unitArray.count - 1 {
        if convertUnits[0] as! String == unitArray[i].name { //loops through unitArray to see if there is a match for abbreviations
            let u = unitArray[i]
            toConvert = singleUnit(value: convertValue, name: u.name, uType: u.uType, bU: u.bUValue) //uses abbreviation to fill in the other details of the units
            flag1 = true
        }
        if convertUnits[1] as! String == unitArray[i].name {
            let u = unitArray[i]
            convertTo = singleUnit(name: u.name, uType: u.uType, bU: u.bUValue)
            flag2 = true
        }
    }
    
    if flag1 == false || flag2 == false {
        answerOut("Could not find unit, exiting")
        return
    }
    
    let answer: String
    if toConvert?.uType == convertTo?.uType {
        let temp = ((convertTo?.bU)! / (toConvert?.bU)!) * (toConvert?.value)! //converting math 😎
        convertTo?.value = temp
        
        let lhs: String = "\( ((toConvert?.value)!).roundToPlaces(toPlaces: Preferences.precision) )\( (toConvert?.name)! )"
        let rhs: String = "\( ((convertTo?.value)!).roundToPlaces(toPlaces: Preferences.precision) )\( (convertTo?.name)! )"
        answer = "\(lhs) == \(rhs)"
    } else {
        answer = "cannot convert between units of type \((toConvert?.uType)!) and \((convertTo?.uType)!)"
    }
    

    answerOut(answer)
}
