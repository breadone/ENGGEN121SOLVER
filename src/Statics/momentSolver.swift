//
//  momentSolver.swift
//  momentSolver
//
//  Created by Pradyun Setti on 5/03/21.
//  https://github.com/breadone/ENGGEN121SOLVER

import Foundation

class Force {
    var mag, xForce, yForce, angle, xDist, yDist: Double
    
    init(mag: Double, angle: Double, xDist: Double, yDist: Double) {
        self.mag = mag //magnitude of vector
        self.angle = angle //angle of vector in degrees !!FROM POS X AXIS!!
        self.xForce = 0 //y component of force relative to axes
        self.yForce = 0 //x component of force relative to axes
        self.xDist = xDist //x component of distance to pivot
        self.yDist = yDist //y component of distance to pivot
        CalcForceComponents()
    }
    
    func CalcForceComponents() {
        self.angle = (self.angle * π / 180) //convert into radians
        
        switch self.angle { //signs dont rlly make sense but trust me they work
        case 0...π/2: //A quadrant
            self.xForce = -(self.mag * cos(self.angle))
            self.yForce = (self.mag * sin(self.angle))
            
        case π/2...π://S Quadrant
            let rAngle = abs(π - self.angle)
            self.xForce = (self.mag * cos(rAngle))
            self.yForce = (self.mag * sin(rAngle))
            
        case π...(3/2)*π://T Quadrant
            let rAngle = abs(π - self.angle)
            self.xForce = (self.mag * cos(rAngle))
            self.yForce = -(self.mag * sin(rAngle))
            
        case (3/2)*π...2*π://C Quadrant
            let rAngle = abs(2*π - self.angle)
            self.xForce = -(self.mag * cos(rAngle))
            self.yForce = -(self.mag * sin(rAngle))
        default:
            print("invalid angle")
        }
    }
}

public func momentSolver() {
    print("Moment Solver")
    var Forces = [Force]() //creates empty array of forces
    print("This solver uses the 'force compenents * orthogonal distance method', so you need to find for each force: the x and y distances from the pivot, and its angle from the positive X axis")
    
    let forceCount: Int = Int(input("how many forces are there: "))!
    for i in 1...forceCount {
        let nForce: [Double] = inputParse("Enter force \(i), in form magnitude@angle: ", type: .force) as! [Double]
        let newMag = nForce[0]
        let newAngle = nForce[1]
        let nDist: [Double] = inputParse("Enter force \(i)'s distance to the pivot in the form x,y: ", type: .XandY) as! [Double]
        let newxDist = nDist[0]
        let newyDist = nDist[1]
        Forces.append(Force(mag: newMag, angle: newAngle, xDist: newxDist, yDist: newyDist))
    }
    
    var sumX: Double = 0
    var sumY: Double = 0

    for i in 0...Forces.count - 1 {
        sumX += (Forces[i].xForce * Forces[i].yDist)
        sumY += (Forces[i].yForce * Forces[i].xDist)
    }
    
    let output: String = """
        ∑X: \(sumX.roundToPlaces(toPlaces: Preferences.precision))
        ∑Y: \(sumY.roundToPlaces(toPlaces: Preferences.precision))
        Total: \((sumX+sumY).roundToPlaces(toPlaces: Preferences.precision))
    """
    
    answerOut(output)
}


