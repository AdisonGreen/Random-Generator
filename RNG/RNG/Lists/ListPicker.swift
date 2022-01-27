//
//  ListPicker.swift
//  RNG
//
//  Created by Adison Green on 1/24/22.
//

import SwiftUI

struct ListPicker: View {
    @State var selection: UserList
    
    private let userList = ListsController.shared.userLists
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("List")
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Picker("Select the list you want to use", selection: $selection) {
                    ForEach(userList.lists, id: \.id) { item in
                        Text("\(item.listName)").tag(item)
                    }
                }
                .pickerStyle(.menu)
                Spacer()
            }
            Text("You selected \(selection.listName)")
        }
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct ListPicker_Previews: PreviewProvider {
    static var previews: some View {
        ListPicker(selection: ListsController.shared.userLists.lists.first!)
    }
}
