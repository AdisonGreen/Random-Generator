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
                .font(.custom("Academy Engraved LET", size: 35))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Text("App Developers")
                .font(.title3)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
            Text("""

Adison Green
Speedmaster24
Matthew Altaniranda

""")
                .multilineTextAlignment(.center)
            Text("Additional help")
                .font(.title3)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
            Text("""

Alan Barth
SwiftyPlant

""")
                .multilineTextAlignment(.center)
            Text("Side note")
                .font(.title3)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
            Text("""

This App was a project made for a college class.
It is the culmination of 6 weeks of work however we the aformentioned app devs do plan to keep working on it even afterwards and turn this into a great app that wont ever have in app purchases or annoying ads that appear every few seconds however to do that we could use your support so feel free to donate to our patreon
if you have any ideas message speedmaster24 at his email of
speedmaster2425@gmail.com
""")
            
                .multilineTextAlignment(.center)
                .padding(.horizontal, 5.0)
        }
    }
}

struct Credits_Previews: PreviewProvider {
    static var previews: some View {
        Credits()
    }
}
