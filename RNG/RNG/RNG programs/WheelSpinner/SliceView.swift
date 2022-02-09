//
//  SliceView.swift
//  RNG
//
//  Created by Adison Green on 2/8/22.
//

import SwiftUI

struct SliceView: View {
    let sizeOfWheelSlice: Double
    let index: Int
    let color: Color
    let text: String
    
    var body: some View {
        let sizeOfPie = Double(sizeOfWheelSlice)
        let startPoint = Double(sizeOfWheelSlice) * Double(index + 1)
        let startAngle = Angle.degrees(startPoint)
        let endAngle = Angle.degrees(sizeOfPie + startPoint)
        
        let midRadians = Double.pi / 2.0 - (startAngle + endAngle).radians / 2.0
        
        let clockwise = true
        
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        
        GeometryReader { geo in
            ZStack {
                Path { path in
                    let width: CGFloat = min(geo.size.width, geo.size.height)
                    let height = width
                    
                    path.move(to: CGPoint(x: width * 0.5, y: height * 0.5))
                    path.addArc(center: .init(x: width * 0.5, y: height * 0.5), radius: 150, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
                }
                .fill(color)
                Text(text)
                    .rotationEffect(Angle(degrees: ((endAngle.degrees + startAngle.degrees) / 2) + 90))
                    .position(
                        x: geo.size.width * 0.5 * CGFloat(1.0 + 0.52 * cos(midRadians)),
                        y: geo.size.height * 0.5 * CGFloat(1.0 - 0.52 * sin(midRadians))
                    )
                    .foregroundColor(Color.black)
            }
        }
    }
}

struct SliceView_Previews: PreviewProvider {
    static var previews: some View {
        SliceView(sizeOfWheelSlice: 20, index: 4, color: .red, text: "Hi")
            .frame(width: 400, height: 400)
    }
}
