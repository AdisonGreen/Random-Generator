//
//  Lists.swift
//  RNG
//
//  Created by Adison Green on 1/13/22.
//

import SwiftUI

struct Lists: View {
    @State private var userList = [UserLists(listName: "Colors", listItems: ["Blue", "Red", "Yellow", "Orange", "Pink", "Green", "Black", "White", "Purple", "Brown", "Gray"]), UserLists(listName: "Food", listItems: ["Hamburger", "Pizza"])]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userList, id: \.self) { item in
                    NavigationLink(destination: EditList()) {
                        Text(item.listName)
                    }
                }
                .onDelete(perform: delete)
            }
            .navigationTitle("Lists")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink(destination: EditList()) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
    
    func delete(at offsets: IndexSet) {
        userList.remove(atOffsets: offsets)
    }
}


struct Lists_Previews: PreviewProvider {
    static var previews: some View {
        Lists()
    }
}
