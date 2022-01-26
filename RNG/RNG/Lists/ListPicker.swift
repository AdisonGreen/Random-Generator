//
//  ListPicker.swift
//  RNG
//
//  Created by Adison Green on 1/24/22.
//

import SwiftUI

struct ListPicker: View {
    @State var userList: UserList
    
    private let selection = ListsController.shared.userLists
    
    var body: some View {
        List {
            HStack {
                Text("List")
                Spacer()
                Picker("Select the list you want to use", selection: $userList) {
                    ForEach(selection.lists, id: \.id) { item in
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
        ListPicker(userList: ListsController.shared.userLists.lists.first!)
    }
}
