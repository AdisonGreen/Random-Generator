//
//  MainPageSettings.swift
//  RNG
//
//  Created by Matthew on 2/16/22.
//

import SwiftUI

struct MainPageSettings: View {
    var body: some View {
        List {
            NavigationLink(destination: Credits()) {
                Image(systemName: "person.3")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.blue)
                Text("Credits")
                    .foregroundColor(Color.black)
            }
            .frame(height: 50)
            NavigationLink(destination: Future_changes()) {
                Image(systemName: "capslock.fill")
                    .foregroundColor(Color.blue)
                Text("Future changes")
                    .foregroundColor(Color.deepBlack)
            }
            .frame(height: 50)
        }
        .listStyle(.inset)
    }
}

struct MainPageSettings_Previews: PreviewProvider {
    static var previews: some View {
        MainPageSettings()
    }
}
