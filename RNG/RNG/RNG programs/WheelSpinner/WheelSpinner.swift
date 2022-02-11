//
//  WheelSpinner.swift
//  RNG
//
//  Created by Adison Green on 1/26/22.
//

import SwiftUI

struct WheelSpinner: View {
    @State private var userSelection = ListsController.shared.userLists.lists.first ?? UserList(listName: "", listItems: ["You have no list selected"], newList: false)
    @State var randomItem = ""
    
    @State private var animationAmount = 0.0
    
    @State private var isAnimating = false
    
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
                    .rotationEffect(.degrees(animationAmount))
                    .animation(.easeOut(duration: 5), value: animationAmount)
            }
            Spacer()
            Button("Spin") {
                let sliceDegrees = Double(360 / userSelection.listItems.count)
                
                let randomDegree = Int.random(in: 0...360)
                let randomDegreeInDouble = Double(randomDegree)
                
                let whereWheelWillLand = randomDegreeInDouble / sliceDegrees
                
                let randomSpins = [2160.0, 2520.0, 2880.0, 3240.0, 3600.0]
                let howManySpins = randomDegreeInDouble + randomSpins.randomElement()!
                animationAmount += howManySpins
                randomItem = ""
            }
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
}

struct WheelSpinner_Previews: PreviewProvider {
    static var previews: some View {
        WheelSpinner()
    }
}
