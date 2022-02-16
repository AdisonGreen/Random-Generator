//
//  MainPageSettings.swift
//  RNG
//
//  Created by Matthew on 2/16/22.
//

import SwiftUI

struct MainPageSettings: View {
    var body: some View {
        VStack {
            Text("Project Created by:")
                .padding(EdgeInsets(top: -320, leading: -135, bottom: 0, trailing: 0))
                .font(Font.title.weight(.semibold))
            Text("Max Josie")
                .padding(EdgeInsets(top: -290, leading: -179, bottom: 0, trailing: 0))
                .font(Font.title3.weight(.light))
            Text("Adison Green")
                .padding(EdgeInsets(top: -275, leading: -179, bottom: 0, trailing: 0))
                .font(Font.title3.weight(.light))
            Text("Matthew Altamiranda")
                .padding(EdgeInsets(top: -260, leading: -175, bottom: 0, trailing: 0))
                .font(Font.title3.weight(.light))
            
        }

    }
}

struct MainPageSettings_Previews: PreviewProvider {
    static var previews: some View {
        MainPageSettings()
    }
}
