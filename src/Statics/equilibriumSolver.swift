//
//  equilibriumSolver.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 18/03/21.
//

import Foundation

class Condition {
    let name: String = ""
    let xF, yF, m: Bool
    
    init(xf: Bool, yf: Bool, m: Bool) {
        self.xF = xf
        self.yF = yf
        self.m = m
    }
    
}
