//
//  ListTabBar.swift
//  RNG
//
//  Created by Adison Green on 1/10/22.
//

import SwiftUI

struct ListTabBar: View {
    @State private var userList = ["Colors", "Food"]
    
    var body: some View {
        List {
            ForEach(0..<userList.count) { userList in
                Text("\(userList)")
            }
        }
    }
}

struct ListTabBar_Previews: PreviewProvider {
    static var previews: some View {
        ListTabBar()
    }
}
