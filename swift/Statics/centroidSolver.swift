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
    
    init(area: Double, xDist: Double, yDist: Double) {
        self.area = area
        self.xDist = xDist
        self.yDist = yDist
    }
}

func centroidSolver() {
    print("Centroid Solver")
    print("This solver uses the 'find big shape then subtract subshapes' method, so find the area of the total big shape, area of all subshapes, and their distances from your reference point. ", terminator: "\n\n")
    
    print("how many subshapes: ")
    let subShapeCount: Int = Int(readLine()!)!
    
    var shapeArray = [Shape]()
    
    print("enter area of main shape: ")
    let mainShapeArea = Double(readLine() ?? "0")!
    print("enter x distance from reference point to centre of shape")
    let mainShapeXDist = Double(readLine() ?? "0")!
    print("enter y distance from reference point to centre of shape")
    let mainShapeYDist = Double(readLine() ?? "0")!
    
    let mainShape = Shape(area: mainShapeArea, xDist: mainShapeXDist, yDist: mainShapeYDist)
    
    for _ in 0...subShapeCount {
        print("enter area of new shape: ")
        let newShapeArea = Double(readLine() ?? "0")!
        print("enter x distance from reference point to centre of shape")
        let newShapeXDist = Double(readLine() ?? "0")!
        print("enter y distance from reference point to centre of shape")
        let newShapeYDist = Double(readLine() ?? "0")!
        
        shapeArray.append(Shape(area: newShapeArea, xDist: newShapeXDist, yDist: newShapeYDist))
    }
    
    var totalSubshapeXCent: Double = 0
    var totalSubshapeYCent: Double = 0
    for i in 0...subShapeCount {
        totalSubshapeXCent += shapeArray[i].area * shapeArray[i].xDist
        totalSubshapeYCent += shapeArray[i].area * shapeArray[i].yDist
    }
    
    let output = """
    X: \(totalSubshapeXCent / mainShape.area)
    Y: \(totalSubshapeYCent / mainShape.area)
    """
    
    answerOut(output)
    
}
