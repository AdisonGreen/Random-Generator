//
//  ListPicker.swift
//  RNG
//
//  Created by Adison Green on 1/24/22.
//

import SwiftUI

struct ListPicker: View {
    let userLists = ListsController.shared.userLists.lists
    @ObservedObject private var selection = ListsController.shared.userLists
    
    var body: some View {
        List {
            HStack {
                Text("List")
                Spacer()
                Picker("Select the list you want to use", selection: $selection.lists) {
                    ForEach(userLists, id: \.id) { item in
                        Text("\(item.listName)")
                    }
                }
                .pickerStyle(.menu)
            }
        }
    }
}

struct ListPicker_Previews: PreviewProvider {
    static var previews: some View {
        ListPicker()
    }
}
