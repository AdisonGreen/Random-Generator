//
//  WheelSpinner.swift
//  RNG
//
//  Created by Adison Green on 1/26/22.
//

import SwiftUI

struct WheelSpinner: View {
    @State private var userSelection = ListsController.shared.userLists.lists.first ?? UserList(listName: "", listItems: ["You have no list selected"], newList: false)
    @State var randomItem = ListsController.shared.userLists.lists.first?.listItems.first ?? "You have no list selected"
    @State private var animationAmount = 0.0
    
    @State private var isAnimating = false
    
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            ListPicker(selection: $userSelection)
            Text(randomItem)
            Spacer()
            VStack(spacing: -70) {
                WheelArrow()
                    .zIndex(1)
                Wheel(myChosenListItems: userSelection.listItems)
                    .rotationEffect(.degrees(animationAmount))
                    .animation(.easeOut(duration: 3), value: animationAmount)
            }
            Spacer()
            Button("Spin") {
                randomItem = userSelection.listItems.randomElement() ?? "You have no list selected"
                animationAmount += 2000
//                isAnimating = true
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
