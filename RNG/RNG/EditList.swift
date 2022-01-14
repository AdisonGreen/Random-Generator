//
//  ListTabBar.swift
//  RNG
//
//  Created by Adison Green on 1/10/22.
//

import SwiftUI

struct EditList: View {
    @State private var userList2 = [UserLists]()
    @State private var userList = UserLists(listName: "Colors", listItems: ["Blue", "Red", "Yellow", "Orange", "Pink", "Green", "Black", "White", "Purple", "Brown", "Gray"])
    @State private var userInput = ""
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("List Name")) {
                    TextField("Name of your list", text: $userList.listName)
                }
                
                Section(header: Text("List Items")) {
                    ForEach(0..<userList.listItems.count, id: \.self) { oneItem in
                        TextField("", text: $userList.listItems[oneItem])
                        
                    }
                }
                
                Button {
                    userList.listItems.append("")
                } label: {
                    HStack {
                        Spacer()
                        Image(systemName: "plus")
                        Spacer()
                    }
                }
            }
            .navigationTitle("Edit Lists")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button("Save") {
                        
                    }
                }
            }
        }
    }
}

struct EditList_Previews: PreviewProvider {
    static var previews: some View {
        EditList()
    }
}
