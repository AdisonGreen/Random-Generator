//
//  SliceView.swift
//  RNG
//
//  Created by Adison Green on 2/8/22.
//

import SwiftUI

struct WheelSlice: InsettableShape {
    let startAngle: Angle
    let endAngle: Angle
    let clockwise: Bool
    var insetAmount = 0.0
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        
        let labelText = "1"
        var path = Path()
       
        path.move(to: CGPoint(x: 200, y: 200))
        path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        labelText.draw(at: CGPoint(x: rect.size.width / 2, y: rect.size.height / 2))

//        , withAttributes: [.foregroundColor: Color.red]
        
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}

struct SliceView: View {
    let sizeOfWheelSlice: Double
    let index: Int
    
    var body: some View {
        let sizeOfPie = Double(sizeOfWheelSlice)
        let startPoint = Double(sizeOfWheelSlice) * Double(index + 1)
        let endPoint = sizeOfPie + startPoint
        
        ZStack(alignment: .center) {
            WheelSlice(startAngle: .degrees(startPoint), endAngle: .degrees(endPoint), clockwise: true)
            
        }
    }
}

struct SliceView_Previews: PreviewProvider {
    static var previews: some View {
        SliceView(sizeOfWheelSlice: 20, index: 4)
    }
}
