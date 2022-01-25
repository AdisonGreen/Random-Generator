//
//  Settings.swift
//  RNG
//
//  Created by Matthew on 1/25/22.
//

import SwiftUI

struct Settings: View {
    var viewModel = CardViewModel()
    @State var includeJokers = false
    
    var body: some View {
        VStack {
            Toggle("Include Jokers?", isOn: $includeJokers)
                .padding(20)
                .onChange(of: includeJokers) { value in
                    if includeJokers == true {
                        viewModel.addJokers()
                    } else {
                        viewModel.removeJoker()
                    }
                }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
