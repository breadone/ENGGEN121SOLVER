//
//  common.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 5/03/21.
//  https://github.com/breadone/ENGGEN121SOLVER

import Foundation

//<prefs>
public var precision: Int = 2 //dp of answer, default is 2

var showComponents: Bool = true //whether or not to show the force components in the final answer, default is true
//</prefs>


public var π = Double.pi

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

func sum(_ array: [Double]) -> Double {
    var count: Double = 0
    for i in 0...array.count {
        count += array[i]
    }
    return count
}
