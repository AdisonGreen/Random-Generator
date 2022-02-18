//
//  Future changes.swift
//  RNG
//
//  Created by speed Master on 2/17/22.
//

import SwiftUI

struct Future_changes: View {
    var body: some View {
        ScrollView {
            Text(/*"Future*/"Changes")
                .font(.custom("Academy Engraved LET", size: 35))
            Text("Updates Coming Soon")
                .font(.title3)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            Text("- Getting Rid of Placeholder Dice and Adding 3D Dice")
                .multilineTextAlignment(.center)
//                .padding(.horizontal, 5.0)
            Text("- Fixing UI for 8 Ball")
//                .multilineTextAlignment(.center)
                .padding(.leading, -170)
                .padding(.top, 2)
            Text("Future Additions")
                .font(.title3)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding()
            Text("- Character Generator")
            Text("- Name Generator")
            Text("- Ad Generator")
            Text("- Random Image Generator")

//            Text("""
//
//    Character Generator (This means an OC or something)
//    Name Generator
//    Ad generator (basicly just a screen with a button that plays a random ad)
//    Image generator (creates a random picture by randomizing pixels)
//    """)
//                .multilineTextAlignment(.center)
//                .padding(.horizontal, 5.0)
        }
        .padding(.top, -50)
    }
}

struct Future_changes_Previews: PreviewProvider {
    static var previews: some View {
        Future_changes()
    }
}
