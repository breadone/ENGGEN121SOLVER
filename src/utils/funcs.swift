//
//  funcs.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 15/03/21.
//

import Foundation

func regex(input inp: String, expression x: String) {
    let range = NSRange(location: 0, length: inp.utf16.count)
    let regex = try! NSRegularExpression(pattern: x)
    regex.firstMatch(in: inp, options: [], range: range)
    
}

extension Double {
    /// Rounds the double to decimal places value
    func roundToPlaces(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
} //source: https://stackoverflow.com/questions/27338573/rounding-a-double-value-to-x-number-of-decimal-places-in-swift

func answerOut(_ output: String) {
    print("------------")
    print(output)
    print("------------")
}

func input(_ question: String) -> String {
    print(question, terminator: "")
    return readLine() ?? ""
}

func anyIn<T>(_ question: String) -> T { // this does not work yet lmao
    print(question, terminator: "")
    let re = readLine()
    
    let r = Functional<T>(t_: re ?? "")
    return r.need
    
}

func inParse(_ str: String, type: inputType) -> Any {
    switch type {
    case .force:
        var mag: Int = -1
        var dir: Int = -1
        if str.contains("@") {
            let at = str.firstIndex(of: "@")!
            mag = Int(str[...at])!
            dir = Int(str[at...])!
        }
        return [mag, dir]
    }

}
enum inputType {
    case force
}

func cRegex(_ inp: String, key: String) throws -> Bool {
    var flag: Bool = false
    
    if key.contains(key) {
        flag = true
    }
    
    return flag
}
