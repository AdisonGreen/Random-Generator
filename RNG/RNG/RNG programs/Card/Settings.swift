//
//  Settings.swift
//  RNG
//
//  Created by Matthew on 1/25/22.
//

import SwiftUI

struct Settings: View {
    @State var includeJokers = false
    
    var body: some View {
        VStack {
            Toggle("Include Jokers?", isOn: $includeJokers)
                .padding(20)
            
            if includeJokers == true {
                Text("On")
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
