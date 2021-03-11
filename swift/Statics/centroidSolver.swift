//
//  centroidSolver.swift
//  ENGGEN121SOLVER
//
//  Created by Pradyun Setti on 12/03/21.
//

import Foundation

struct Shape {
    let area: Double
    let xDist, yDist: Double
    
}

func centroidSolver() {
    print("how many subshapes: ")
    let subShapeCount: Int = Int(readLine()!)!
    
    var shapeArray = [Shape]()
    
    print("enter area of main shape: ")
    let mainShapeArea = Double(readLine() ?? "0")!
    print("enter x distance from reference point to centre of shape")
    let mainShapeXDist = Double(readLine() ?? "0")!
    print("enter y distance from reference point to centre of shape")
    let mainShapeYDist = Double(readLine() ?? "0")!
    
    var mainShape = Shape(area: mainShapeArea, xDist: mainShapeXDist, yDist: mainShapeYDist)
    
    for _ in 0...subShapeCount {
        print("enter area of main shape: ")
        let newShapeArea = Double(readLine() ?? "0")!
        print("enter x distance from reference point to centre of shape")
        let newShapeXDist = Double(readLine() ?? "0")!
        print("enter y distance from reference point to centre of shape")
        let newShapeYDist = Double(readLine() ?? "0")!
        
        shapeArray.append(Shape(area: newShapeArea, xDist: newShapeXDist, yDist: newShapeYDist))
    }
    
    
}
