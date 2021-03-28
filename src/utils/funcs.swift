//
//  funcs.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 15/03/21.
//

import Foundation

///Extension to round to certain number of dp in a double
extension Double {
    /// Rounds the double to decimal places value
    func roundToPlaces(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
} //source: https://stackoverflow.com/questions/27338573/rounding-a-double-value-to-x-number-of-decimal-places-in-swift

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

///[broken] input method that can automatically convert to a type
func anyIn<T>(_ question: String) -> T { // NO ERROR CHECKING if it breaks it breaks ¯\_(ツ)_/¯
    print(question, terminator: ": ")
    let re = readLine()
    return re as! T
}

/**
 * .force: "<mag>@<angle>" --> [mag, angle],
 * .XandY: <x>,<y> --> [x, y]
*/
func strParse(input str: String, type: inputType) -> Any {
    switch type {
    case .force:
        var mag: Double = -1
        var dir: Double = -1
        if str.contains("@") {
            let atSign = str.firstIndex(of: "@")! //finds position of at sign
            mag = Double( str[...str.index(before: atSign)] ) ?? 0 //takes the substring of str from 0 to the character before @
            dir = Double( str[str.index(after: atSign)...] ) ?? 0 //ditto above but after the @ sign to the end of the string
        }
        return [mag, dir]
        
    case .XandY:
        var x: Double = -1
        var y: Double = -1
        let comma = str.firstIndex(of: ",")!
        x = Double( str[...str.index(before: comma)] ) ?? 0
        y = Double( str[str.index(after: comma)...] ) ?? 0
        return [x, y]
    }

}
func inputParse(_ q: String, type: inputType) -> Any {
    let str = input(q)
    switch type {
    case .force:
        var mag: Double = -1
        var dir: Double = -1
        if str.contains("@") {
            let atSign = str.firstIndex(of: "@")! //finds position of at sign
            mag = Double( str[...str.index(before: atSign)] ) ?? 0 //takes the substring of str from 0 to the character before @
            dir = Double( str[str.index(after: atSign)...] ) ?? 0 //ditto above but after the @ sign to the end of the string
        }
        return [mag, dir]
        
    case .XandY:
        var x: Double = -1
        var y: Double = -1
        let comma = str.firstIndex(of: ",")!
        x = Double( str[...str.index(before: comma)] ) ?? 0
        y = Double( str[str.index(after: comma)...] ) ?? 0
        return [x, y]
    }

}

enum inputType {
    case force
    case XandY
}

