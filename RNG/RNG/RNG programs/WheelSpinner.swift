//
//  WheelSpinner.swift
//  RNG
//
//  Created by Adison Green on 1/26/22.
//

import SwiftUI

struct WheelSpinner: View {
    @State private var userLists = ListsController.shared.userLists.lists.first?.listItems
    @State var userSelection = ListsController.shared.userLists.lists.first
    
    var body: some View {
        VStack {
            ListPicker(selection: userSelection!)
            Text(userSelection?.listItems.first ?? "There is noting in this list")
            Button("Spin") {
                userSelection?.listItems.shuffle()
            }
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
            .font(.title)
            .background(Color.seafoam)
            .cornerRadius(40)
            .shadow(radius: 3)
            .frame(minWidth: 1, maxWidth: .infinity)
        }
        .background(.green)
        
    }
}

struct WheelSpinner_Previews: PreviewProvider {
    static var previews: some View {
        WheelSpinner()
    }
}
