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
    let myChosenListItems = ["a", "b", "c", "d"]
    
    var body: some View {
        ZStack {
            ForEach(myChosenListItems.indices, id: \.self) { item in
                let sizeOfWheelSlice = 360 / myChosenListItems.count
                
                let sizeOfPie = Double(sizeOfWheelSlice)
                let startPoint = Double(sizeOfWheelSlice) * Double(item + 1)
                let endPoint = sizeOfPie + startPoint
                
                drawWheel(startAngle: .degrees(startPoint), endAngle: .degrees(endPoint), clockwise: true)
                    .foregroundColor(item % 2 == 0 ? .red : .blue)
            }
        }
    }
    
    func chooseAColor() {
        
    }
}

struct Wheel_Previews: PreviewProvider {
    static var previews: some View {
        Wheel()
    }
}
