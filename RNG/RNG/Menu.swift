//
//  Menu.swift
//  RNG
//
//  Created by speed Master on 1/4/22.
//

import SwiftUI

struct Menu: View {
    @State private var action: Int? = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        // RANDOM NUMBER GENERATOR BUTTON
                        NavigationLink(destination: Random_Number_Gen(), tag: 1, selection: $action) {
                        }
                        Button {
                            print("yessss")
                        } label: {
                            Image("HashtagRounded")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(5)
                                .onTapGesture {
                                    self.action = 1
                                }
                        }
                        // DICE ROLLER GENERATOR
                        Button {
                            print("yessss")
                        } label: {
                            Image("DiceRounded")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(5)
                        }
                        // RANDOM CARD PICKER GENERTOR
                        Button {
                            print("yessss")
                        } label: {
                            Image("CardRounded")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(5)
                        }
                    }
                    HStack {
                        Button {
                            print("yessss")
                        } label: {
                            Image("BlankRounded")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(5)
                        }
                        Button {
                            print("yessss")
                        } label: {
                            Image("BlankRounded")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(5)
                        }
                        Button {
                            print("yessss")
                        } label: {
                            Image("BlankRounded")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(5)
                        }
                    }
                    HStack {
                        Button {
                            print("yessss")
                        } label: {
                            Image("BlankRounded")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(5)
                        }
                        Button {
                            print("yessss")
                        } label: {
                            Image("BlankRounded")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(5)
                        }
                        Button {
                            print("yessss")
                        } label: {
                            Image("BlankRounded")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(5)
                        }
                    }
                    HStack {
                        Button {
                            print("yessss")
                        } label: {
                            Image("BlankRounded")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(5)
                        }
                        Button {
                            print("yessss")
                        } label: {
                            Image("BlankRounded")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(5)
                        }
                        Button {
                            print("yessss")
                        } label: {
                            Image("BlankRounded")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(5)
                        }
                    }
                }
                //scrollview
            }
            .navigationTitle("Random generators")
            //nav view
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
