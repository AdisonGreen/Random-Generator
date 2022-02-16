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
                        VStack {
                            // RANDOM NUMBER GENERATOR BUTTON
                            NavigationLink(destination: Random_Number_Gen()) {
                                Image("HashtagRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                            Text("RNG")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                        }
                        VStack {
                            // DICE ROLLER GENERATOR
                            NavigationLink(destination: DiceRoller()) {
                                Image("DiceRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                            Text("Dice Roller")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                        }
                        VStack {
                            // RANDOM CARD PICKER GENERTOR
                            NavigationLink(destination: Card_Picker()) {
                                Image("CardRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                            Text("Card Picker")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                        }
                    }
                    HStack {
                        VStack {
                            //Spinner
                            NavigationLink(destination: WheelSpinner()) {
                                Image("WheelRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                            Text("Spinner")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                        }
                        VStack {
                            //Magic 8Ball
                            NavigationLink(destination: EightBall()) {
                                Image("8BallRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                            Text("Magic 8Ball")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                        }
                        VStack {
                            //Add
                            NavigationLink(destination: Password_Generator()) {
                                Image("LockRounded")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(5)
                            }
                            Text("Password Gen")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                        }
                    }
//                    HStack {
//                        Button {
//                            print("A1")
//                        } label: {
//                            Image("BlankRounded")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .padding(5)
//                        }
//                        Button {
//                            print("A2")
//                        } label: {
//                            Image("BlankRounded")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .padding(5)
//                        }
//                        Button {
//                            print("A3")
//                        } label: {
//                            Image("BlankRounded")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .padding(5)
//                        }
//                    }
//                    HStack {
//                        Button {
//                            print("B1")
//                        } label: {
//                            Image("BlankRounded")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .padding(5)
//                        }
//                        Button {
//                            print("B2")
//                        } label: {
//                            Image("BlankRounded")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .padding(5)
//                        }
//                        Button {
//                            print("B3")
//                        } label: {
//                            Image("BlankRounded")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .padding(5)
//                        }
//                    }
                }
            } //scrollView Closing bracket
                .navigationTitle("Random Generators")
        } //nav view closing bracket
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
