//
//  TabBarView.swift
//  RNG
//
//  Created by Adison Green on 1/26/22.
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
            //so long as this text is commented out this tab bar item wont show
            //Text("fancy generators")
                .tabItem {
                    Image(systemName: "gear.circle.fill")
                    Text("Fancy Generators")
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
