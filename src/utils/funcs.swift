//
//  funcs.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 15/03/21.
//

import Foundation

///Round to certain number of dp
extension Double {
    /// Rounds the double to decimal places value
    func roundToPlaces(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
} //source: https://stackoverflow.com/questions/27338573

///Standard output with visual seperators
func answerOut(_ output: String) {
    print("------------")
    print(output)
    print("------------")
}

///Takes a string, then automatically gets input from user
func input(_ question: String) -> String {
    print(question, terminator: "")
    return readLine() ?? ""
}

/**
 * - Parameters:
 *   - q: the question to be outputted to the screem
 *   - type: the type of input you are expecting
 * - Returns:
 *   - .force: "mag@angle" --> [mag, angle]
 *   - .XandY: x,y --> [x, y]
 *   - .units: "number|unit->unit" --> [number, unit1, unit2]
 */
func inputParse(_ q: String, type: inputType) -> Any {
    let str = input(q)
    
    switch type {
    case .force:
        var mag: Double = -1
        var dir: Double = -1
        if str.contains("@") {
            let atSign = str.firstIndex(of: "@") ?? str.startIndex //finds position of @ sign
            mag = Double( str[...str.index(before: atSign)] ) ?? 0 //takes the substring of str from 0 to the character before @
            dir = Double( str[str.index(after: atSign)...] ) ?? 0 //ditto above but after the @ sign to the end of the string
        }
        return [mag, dir]
    case .XandY:
        var x: Double = -1
        var y: Double = -1
        let comma = str.firstIndex(of: ",") ?? str.startIndex
        x = Double( str[...str.index(before: comma)] ) ?? 0
        y = Double( str[str.index(after: comma)...] ) ?? 0
        return [x, y]
    case .units:
//        var type: unitType //may do some fancy error that u cant convert between unit types later
        var expressions = [String]() //two sides of the arrow
        var value: Double = 0 //value to convert
        var units = [String]() //what units to use
        
        if str.contains("->") {
            let arrow = str.firstIndex(of: "-") ?? str.startIndex
            expressions.append(String(str[...str.index(before: arrow)] ))
            expressions.append(String( String(str[str.index(after: arrow)...] ).dropFirst() )) //yes the double string cast is needed ik messy
        }
        
        for i in 0...10 {
            let exp = expressions[0]
            let l = exp.length
            let p = (l-i)
            
            if let v = Double(exp.dropLast(i)) {
                value = v
                units.append(exp[p..<l].lowercased())
                break
            }
        }
        
        units.append(expressions[1].lowercased())
        
        return [value, units[0], units[1]]
    }

}

enum inputType {
    case force
    case XandY
    case units
}

