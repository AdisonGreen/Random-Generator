//
//  Wheel.swift
//  RNG
//
//  Created by Adison Green on 2/3/22.
//

import SwiftUI

struct drawWheel: InsettableShape {
    let startAngle: Angle
    let endAngle: Angle
    let clockwise: Bool
    var insetAmount = 0.0
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        
        var path = Path()
        
        path.move(to: CGPoint(x: 200, y: 200))
        path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}

struct Wheel: View {
    let myChosenListItems = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    
    var body: some View {
        ZStack {
            ForEach(0..<2) { item in
                if myChosenListItems.count == 1 {
                    drawWheel(startAngle: .degrees(0), endAngle: .degrees(360), clockwise: true)
                        .foregroundColor(.green)
                } else if myChosenListItems.count == 2 {
                    drawWheel(startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true)
                        .foregroundColor(.green)
                    drawWheel(startAngle: .degrees(180), endAngle: .degrees(360), clockwise: true)
                        .foregroundColor(.blue)
                } else if myChosenListItems.count == 3 {
                    drawWheel(startAngle: .degrees(0), endAngle: .degrees(120), clockwise: true)
                        .foregroundColor(.green)
                    drawWheel(startAngle: .degrees(120), endAngle: .degrees(240), clockwise: true)
                        .foregroundColor(.blue)
                    drawWheel(startAngle: .degrees(240), endAngle: .degrees(360), clockwise: true)
                        .foregroundColor(.yellow)
                } else if myChosenListItems.count == 4 {
                    drawWheel(startAngle: .degrees(0), endAngle: .degrees(90), clockwise: true)
                        .foregroundColor(.blue)
                    drawWheel(startAngle: .degrees(90), endAngle: .degrees(180), clockwise: true)
                        .foregroundColor(.green)
                    drawWheel(startAngle: .degrees(180), endAngle: .degrees(270), clockwise: true)
                        .foregroundColor(.yellow)
                    drawWheel(startAngle: .degrees(270), endAngle: .degrees(360), clockwise: true)
                        .foregroundColor(.red)
                } else if myChosenListItems.count == 5 {
                    drawWheel(startAngle: .degrees(0), endAngle: .degrees(72), clockwise: true)
                        .foregroundColor(.blue)
                    drawWheel(startAngle: .degrees(72), endAngle: .degrees(144), clockwise: true)
                        .foregroundColor(.orange)
                    drawWheel(startAngle: .degrees(144), endAngle: .degrees(216), clockwise: true)
                        .foregroundColor(.yellow)
                    drawWheel(startAngle: .degrees(216), endAngle: .degrees(288), clockwise: true)
                        .foregroundColor(.green)
                    drawWheel(startAngle: .degrees(288), endAngle: .degrees(360), clockwise: true)
                        .foregroundColor(.red)
                } else if myChosenListItems.count == 6 {
                    drawWheel(startAngle: .degrees(0), endAngle: .degrees(60), clockwise: true)
                        .foregroundColor(.blue)
                    drawWheel(startAngle: .degrees(60), endAngle: .degrees(120), clockwise: true)
                        .foregroundColor(.orange)
                    drawWheel(startAngle: .degrees(120), endAngle: .degrees(180), clockwise: true)
                        .foregroundColor(.yellow)
                    drawWheel(startAngle: .degrees(180), endAngle: .degrees(240), clockwise: true)
                        .foregroundColor(.green)
                    drawWheel(startAngle: .degrees(240), endAngle: .degrees(300), clockwise: true)
                        .foregroundColor(.red)
                    drawWheel(startAngle: .degrees(300), endAngle: .degrees(360), clockwise: true)
                        .foregroundColor(.yellow)
                } else if myChosenListItems.count == 7 {
                    drawWheel(startAngle: .degrees(0), endAngle: .degrees(51.42), clockwise: true)
                        .foregroundColor(.blue)
                    drawWheel(startAngle: .degrees(51.42), endAngle: .degrees(102.84), clockwise: true)
                        .foregroundColor(.orange)
                    drawWheel(startAngle: .degrees(102.84), endAngle: .degrees(154.26), clockwise: true)
                        .foregroundColor(.yellow)
                    drawWheel(startAngle: .degrees(154.26), endAngle: .degrees(205.68), clockwise: true)
                        .foregroundColor(.green)
                    drawWheel(startAngle: .degrees(205.68), endAngle: .degrees(257.1), clockwise: true)
                        .foregroundColor(.red)
                    drawWheel(startAngle: .degrees(257.1), endAngle: .degrees(308.52), clockwise: true)
                        .foregroundColor(.yellow)
                    drawWheel(startAngle: .degrees(308.52), endAngle: .degrees(360), clockwise: true)
                        .foregroundColor(.green)
                } else if myChosenListItems.count == 8 {
                    drawWheel(startAngle: .degrees(0), endAngle: .degrees(45), clockwise: true)
                        .foregroundColor(.blue)
                    drawWheel(startAngle: .degrees(45), endAngle: .degrees(90), clockwise: true)
                        .foregroundColor(.orange)
                    drawWheel(startAngle: .degrees(90), endAngle: .degrees(135), clockwise: true)
                        .foregroundColor(.yellow)
                    drawWheel(startAngle: .degrees(135), endAngle: .degrees(180), clockwise: true)
                        .foregroundColor(.green)
                    drawWheel(startAngle: .degrees(180), endAngle: .degrees(225), clockwise: true)
                        .foregroundColor(.red)
                    drawWheel(startAngle: .degrees(225), endAngle: .degrees(270), clockwise: true)
                        .foregroundColor(.yellow)
                    drawWheel(startAngle: .degrees(270), endAngle: .degrees(315), clockwise: true)
                        .foregroundColor(.green)
                    drawWheel(startAngle: .degrees(315), endAngle: .degrees(360), clockwise: true)
                        .foregroundColor(.red)
                } else if myChosenListItems.count == 9 {
                    drawWheel(startAngle: .degrees(0), endAngle: .degrees(40), clockwise: true)
                        .foregroundColor(.blue)
                    drawWheel(startAngle: .degrees(40), endAngle: .degrees(80), clockwise: true)
                        .foregroundColor(.orange)
                    drawWheel(startAngle: .degrees(80), endAngle: .degrees(120), clockwise: true)
                        .foregroundColor(.yellow)
                    drawWheel(startAngle: .degrees(120), endAngle: .degrees(160), clockwise: true)
                        .foregroundColor(.green)
                    drawWheel(startAngle: .degrees(160), endAngle: .degrees(200), clockwise: true)
                        .foregroundColor(.red)
                    drawWheel(startAngle: .degrees(200), endAngle: .degrees(240), clockwise: true)
                        .foregroundColor(.blue)
                    drawWheel(startAngle: .degrees(240), endAngle: .degrees(280), clockwise: true)
                        .foregroundColor(.orange)
                    drawWheel(startAngle: .degrees(280), endAngle: .degrees(320), clockwise: true)
                        .foregroundColor(.yellow)
                    drawWheel(startAngle: .degrees(320), endAngle: .degrees(360), clockwise: true)
                        .foregroundColor(.green)
                } else if myChosenListItems.count == 10 {
                    drawWheel(startAngle: .degrees(0), endAngle: .degrees(36), clockwise: true)
                        .foregroundColor(.blue)
                    drawWheel(startAngle: .degrees(36), endAngle: .degrees(72), clockwise: true)
                        .foregroundColor(.orange)
                    drawWheel(startAngle: .degrees(72), endAngle: .degrees(108), clockwise: true)
                        .foregroundColor(.yellow)
                    drawWheel(startAngle: .degrees(108), endAngle: .degrees(144), clockwise: true)
                        .foregroundColor(.green)
                    drawWheel(startAngle: .degrees(144), endAngle: .degrees(180), clockwise: true)
                        .foregroundColor(.red)
                    drawWheel(startAngle: .degrees(180), endAngle: .degrees(216), clockwise: true)
                        .foregroundColor(.blue)
                    drawWheel(startAngle: .degrees(216), endAngle: .degrees(252), clockwise: true)
                        .foregroundColor(.orange)
                    drawWheel(startAngle: .degrees(252), endAngle: .degrees(288), clockwise: true)
                        .foregroundColor(.yellow)
                    drawWheel(startAngle: .degrees(288), endAngle: .degrees(324), clockwise: true)
                        .foregroundColor(.green)
                    drawWheel(startAngle: .degrees(324), endAngle: .degrees(360), clockwise: true)
                        .foregroundColor(.red)
                }
            }
        }
    }
}

struct Wheel_Previews: PreviewProvider {
    static var previews: some View {
        Wheel()
    }
}
