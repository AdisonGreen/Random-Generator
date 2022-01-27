//
//  TabBarView.swift
//  RNG
//
//  Created by Adison Green on 1/27/22.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Menu()
                .tabItem {
                    Image(systemName: "infinity.circle.fill")
                    Text("Generators")
                }

            Lists()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Lists")
                }
        }

    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
