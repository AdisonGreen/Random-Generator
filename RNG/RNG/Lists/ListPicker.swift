//
//  ListPicker.swift
//  RNG
//
//  Created by Adison Green on 1/24/22.
//

import SwiftUI

struct ListPicker: View {
    @State private var userLists = ListsController.shared.userLists
    @State private var selection = ListsController.shared.userLists.lists.first
    
    var body: some View {
        List {
            HStack {
                Text("List")
                Spacer()
                Picker("Select the list you want to use", selection: $selection) {
                    ForEach(userLists.lists, id: \.id) { item in
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
