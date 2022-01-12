//
//  Menu.swift
//  RNG
//
//  Created by speed Master on 1/4/22.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        // RANDOM NUMBER GENERATOR BUTTON
                        Button {
                            print("yessss")
                        } label: {
                            Image("HashtagRounded")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(5)
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
