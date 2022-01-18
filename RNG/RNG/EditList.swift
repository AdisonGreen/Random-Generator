//
//  ListTabBar.swift
//  RNG
//
//  Created by Adison Green on 1/10/22.
//

import SwiftUI

struct EditList: View {
    @State var listChosen: UserLists
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("List Name")) {
                    TextField("Name of your list", text: $listChosen.listName)
                }
                
                Section(header: Text("List Items")) {
                    ForEach(0..<listChosen.listItems.count, id: \.self) { item in
                        TextField("", text: $listChosen.listItems[item])
                        
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
                    Button("Save") {
                        
                    }
                }
            }
        }
    }
}

struct EditList_Previews: PreviewProvider {
    static var previews: some View {
        EditList(listChosen: UserLists(listName: "Some dude", listItems: ["What", "is", "this", "for"]))
    }
}
