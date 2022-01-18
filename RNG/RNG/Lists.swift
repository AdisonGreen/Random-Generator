//
//  Lists.swift
//  RNG
//
//  Created by Adison Green on 1/13/22.
//

import SwiftUI

struct Lists: View {
    
    var lists: [UserLists] {
        ListsController.shared.lists
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(lists, id: \.self) { item in
                    NavigationLink(destination: EditList(listChosen: item)) {
                        Text(item.listName)
                    }
                }
            }
            .navigationTitle("Lists")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                }
            }
        }
    }
}


struct Lists_Previews: PreviewProvider {
    static var previews: some View {
        Lists()
    }
}
