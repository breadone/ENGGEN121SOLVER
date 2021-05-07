//
//  expression.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 8/05/21.
//

import Foundation

struct term {

    var hasX: funcOp
    var num: Double
}

struct function {
    var exps = [term]()
    
    public mutating func addTerm(_ h: funcOp, _ n: Double) {
        self.exps.append(term(hasX: h, num: n))
    }
}

enum funcOp {
    case none, mlt, div
}
