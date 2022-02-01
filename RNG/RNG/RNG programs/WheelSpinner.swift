//
//  WheelSpinner.swift
//  RNG
//
//  Created by Adison Green on 1/26/22.
//

import SwiftUI

struct WheelSpinner: View {
    @State private var userSelection = ListsController.shared.userLists.lists.first!
    @State var randomItem = ListsController.shared.userLists.lists.first!.listItems.first
    
    var body: some View {
        
        VStack {
            Spacer()
            Spacer()
            ListPicker(selection: $userSelection)
            Spacer()
            Text(randomItem ?? "There is nothing in this list")
            
            Spacer()
            Button("Spin") {
                randomItem = userSelection.listItems.randomElement()
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
