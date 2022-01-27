//
//  WheelSpinner.swift
//  RNG
//
//  Created by Adison Green on 1/26/22.
//

import SwiftUI

struct WheelSpinner: View {
    @State private var userLists = ListsController.shared.userLists.lists.first?.listItems
    @ObservedObject var userSelection = ListsController.shared.userLists.lists.first!
    
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            ListPicker(selection: userSelection)
            Spacer()
            Text(userSelection.listItems.first ?? "There is nothing in this list")
            Spacer()
            Button("Spin") {
                if userSelection.listItems.first == userLists?.first {
                    print("It is not changed")
                } else {
                    print("It is changed")
                }
                
                userSelection.listItems.shuffle()
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
    }
}

struct WheelSpinner_Previews: PreviewProvider {
    static var previews: some View {
        WheelSpinner()
    }
}
