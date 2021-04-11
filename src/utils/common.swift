//
//  common.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 5/03/21.
//  https://github.com/breadone/ENGGEN121SOLVER

import Foundation

struct Preferences {
static let precision: Int = 2 //dp of answer, default is 2
    
}

extension Date {
    static var now: Date {
        Date()
    }
}

extension String {
    var length: Int {
        return count
    }

    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }

    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}

let π = Double.pi

