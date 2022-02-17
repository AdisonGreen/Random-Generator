//
//  Credits.swift
//  RNG
//
//  Created by speed Master on 2/17/22.
//

import SwiftUI

struct Credits: View {
    var body: some View {
        ScrollView {
            Text("Credits")
                .font(.custom("Academy Engraved LET Plain", size: 35))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Text("App Developers")
                .font(.title3)
                .fontWeight(.medium)
            Text("""
adison green
Speedmaster24
matthew altaniranda
""")
                .multilineTextAlignment(.center)
            Text("")
                .multilineTextAlignment(.center)
        }
    }
}

struct Credits_Previews: PreviewProvider {
    static var previews: some View {
        Credits()
    }
}
