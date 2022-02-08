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
    
    var body: some View {
        
        VStack {
            Spacer()
            Spacer()
            ListPicker(selection: $userSelection)
            Spacer()
            Text(randomItem)
//            Wheel(myChosenListItems: userSelection.listItems)
            Spacer()
            Button("Spin") {
                randomItem = userSelection.listItems.randomElement() ?? "You have no list selected"
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
