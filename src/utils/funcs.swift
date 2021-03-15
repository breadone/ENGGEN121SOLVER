//
//  funcs.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 15/03/21.
//

import Foundation

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
