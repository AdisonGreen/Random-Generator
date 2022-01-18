//
//  List.swift
//  RNG
//
//  Created by Adison Green on 1/11/22.
//

import Foundation

struct UserLists: Hashable, Codable {
    var listName: String
    var listItems: [String]
    var id = UUID()
}
