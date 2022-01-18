//
//  ListTabBar.swift
//  RNG
//
//  Created by Adison Green on 1/10/22.
//

import SwiftUI

struct EditList: View {
    @Environment(\.presentationMode) var presentationMode
    @StateObject var listChosen: UserList
    @StateObject var userLists: UserLists
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("List Name")) {
                    TextField("Name of your list", text: $listChosen.listName)
                }
                
                Section(header: Text("List Items")) {
                    ForEach($listChosen.listItems, id: \.self) { item in
                        TextField("One item from you list", text: item)
                        
                    }
                }
                
                Button {
                    listChosen.listItems.append("")
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
                    Button("Done") {
                        userLists.objectWillChange.send()
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

//struct EditList_Previews: PreviewProvider {
//    static var previews: some View {
//        EditList(listChosen: UserList(listName: "Some dude", listItems: ["What", "is", "this", "for"]))
//    }
//}
