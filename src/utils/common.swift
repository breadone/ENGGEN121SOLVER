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

extension Date {
    static var now: Date {
        Date()
    }
}

extension String {
    func index(from: Int) -> Index {
        return self.index(startIndex, offsetBy: from)
    }
    
    func index(chr: Character) -> Index {
        let t = self.firstIndex(of: chr)
        return t!
    }

    func substring(fromInt: Int) -> String {
        let fromIndex = index(from: fromInt)
        return String(self[fromIndex...])
    }

    func substring(toInt: Int) -> String {
        let toIndex = index(from: toInt)
        return String(self[..<toIndex])
    }

    func substring(with r: Range<Int>) -> String {
        let startIndex = index(from: r.lowerBound)
        let endIndex = index(from: r.upperBound)
        return String(self[startIndex..<endIndex])
    }
    
    func substring(fromChar: Character) -> String {
        
        return ""
    }
}

public var π = Double.pi

