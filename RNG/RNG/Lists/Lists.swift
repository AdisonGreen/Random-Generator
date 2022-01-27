//
//  Lists.swift
//  RNG
//
//  Created by Adison Green on 1/13/22.
//

import SwiftUI

struct Lists: View {
    
    @StateObject var userLists: UserLists = ListsController.shared.userLists
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userLists.lists, id: \.id) { item in
                    NavigationLink(destination: EditList(listChosen: item, userLists: userLists)) {
                        Text(item.listName)
                    }
                }
                .onDelete(perform: delete)
            }
            .onAppear {
                userLists.objectWillChange.send()
            }
            
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink(destination: EditList(listChosen: UserList(listName: "", listItems: ["", ""], newList: true), userLists: userLists)) {
                        Image(systemName: "plus")
                    }
                }
            }
            .navigationTitle("Lists")
        }
    }
    
    func delete(at offsets: IndexSet) {
        userLists.lists.remove(atOffsets: offsets)
        userLists.objectWillChange.send()
    }
}


struct Lists_Previews: PreviewProvider {
    static var previews: some View {
        Lists()
    }
}
