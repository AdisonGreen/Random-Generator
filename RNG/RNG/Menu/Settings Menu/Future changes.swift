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
            Text("Future Changes")
                .font(.custom("Academy Engraved LET", size: 35))
            Text("Things to Fix")
                .font(.title3)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
            Text("""
    
    Making the Dice images to be fully 3D looking and getting rid of placeholder images
    fixing the UI problems with 8ball
    
    """)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 5.0)
            Text("Future Additions")
                .font(.title3)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
            Text("""
    
    Character Generator (This means an OC or something)
    Name Generator (names)
    Ad generator (basicly just a screen with a button that plays a random ad)
    Image generator (creates a random picture by randomizing pixels)
    """)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 5.0)
        }
    }
}

struct Future_changes_Previews: PreviewProvider {
    static var previews: some View {
        Future_changes()
    }
}
