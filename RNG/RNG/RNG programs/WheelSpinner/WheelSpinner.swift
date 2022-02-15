//
//  WheelSpinner.swift
//  RNG
//
//  Created by Adison Green on 1/26/22.
//

import SwiftUI

struct WheelSpinner: View {
    @State private var userSelection = ListsController.shared.userLists.lists.first ?? UserList(listName: "", listItems: ["You have no list selected"], newList: false)
    @State private var randomItem = ""

    @State private var currentPosition = 0.0
    @State private var animationRotationLength = 0.0
    
    @State private var isAnimating = false
    
    let howLongToSpin = 7.0
    
    @State private var disabled = false
    
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            ListPicker(selection: $userSelection)
            Spacer()
            VStack(spacing: -70) {
                WheelArrow()
                    .zIndex(1)
                Wheel(myChosenListItems: userSelection.listItems)
                    .rotationEffect(.degrees(animationRotationLength))
                    .animation(.easeOut(duration: howLongToSpin), value: animationRotationLength)
            }
            Spacer()
            Button("Spin") {
                disabled = true
                
                let sliceDegrees = 360.0 / Double(userSelection.listItems.count)
                let halfSliceDegrees = sliceDegrees / 2.0
                
                let randomIndex = Int.random(in: 0..<userSelection.listItems.count)
                
                let degreesOfRotation = Double(randomIndex + 1) * sliceDegrees
                
                randomItem = userSelection.listItems[randomIndex]
                
                let randomSpins = [2160.0, 2520.0, 2880.0, 3240.0, 3600.0]
                let howManySpins = degreesOfRotation + randomSpins.randomElement()!
            
                let startRangeOfSlice = Int(halfSliceDegrees * -1.0) + 1
                let endRangeOfSlice = Int(halfSliceDegrees) - 1
                
                let randomPointOnSlice = Int.random(in: startRangeOfSlice...endRangeOfSlice)
                let randomPointInDouble = Double(randomPointOnSlice)

                let targetRotation = howManySpins + halfSliceDegrees + randomPointInDouble
                animationRotationLength -= targetRotation - (currentPosition.truncatingRemainder(dividingBy: 360))
                currentPosition = targetRotation
                
                delayAlert()
            }
            .disabled(disabled)
            .alert("\(randomItem)", isPresented: $isAnimating) {
                Button("Ok", role: .cancel) { }
            }
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
            .font(.title)
            .background(Color.seafoam)
            .cornerRadius(40)
            .shadow(radius: 3)
            .frame(minWidth: 1, maxWidth: .infinity)
            Spacer()
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Wheel Spinner")
    }
    
    func delayAlert() {
        DispatchQueue.main.asyncAfter(deadline: .now() + howLongToSpin - 0.1) {
            isAnimating = true
            disabled = false
        }
    }
}

struct WheelSpinner_Previews: PreviewProvider {
    static var previews: some View {
        WheelSpinner()
    }
}
