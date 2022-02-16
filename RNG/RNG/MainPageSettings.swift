//
//  MainPageSettings.swift
//  RNG
//
//  Created by Matthew on 2/16/22.
//

import SwiftUI

struct MainPageSettings: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Project Created by:")
                    .padding(EdgeInsets(top: -50, leading: 2, bottom: -3, trailing: 0))
                    .font(Font.title.weight(.semibold))
                Text("Max Josie")
                    .padding(EdgeInsets(top: -5, leading: 20, bottom: 3, trailing: 0))

                Text("Adison Green")
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 3, trailing: 0))
                Text("Matthew Altamiranda")
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    Spacer()
            }
            Spacer()
        }
        
    

    }
}

struct MainPageSettings_Previews: PreviewProvider {
    static var previews: some View {
        MainPageSettings()
    }
}
