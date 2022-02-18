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
            VStack {
                Text("- Adison Green")
                    .padding(1)
                Text("- Speedmaster24")
                    .padding(1)
                Text("- Matthew Altamiranda")
                    .padding(1)
            }
            .padding(2)
            .multilineTextAlignment(.center)
            Text("Additional help")
                .font(.title3)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
            VStack {
                Text("- Alan Barth")
                    .padding(1)
                Text("- SwiftyPlant")
                    .padding(1)
            }
            Text("Side note")
                .font(.title3)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding(2)
            Text("This App was a project made for a college class. It is the progress of 6 weeks. The App developers have decided that we will keep progressing on the app afterwards and make it so that it does not have any type of in app purchases or ads. However if you would like to support us feel free to donate to our patreon. Any further questions or ideas email us at speedmaster2425@gmail.com")
                .multilineTextAlignment(.center)
                .padding(.horizontal, 5.0)
        }
        .padding(.top, -50)
    }
}

struct Credits_Previews: PreviewProvider {
    static var previews: some View {
        Credits()
    }
}
