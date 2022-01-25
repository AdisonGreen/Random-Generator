//
//  List.swift
//  RNG
//
//  Created by Adison Green on 1/11/22.
//

import Foundation

class UserLists: ObservableObject, Hashable {
    static func == (lhs: UserLists, rhs: UserLists) -> Bool {
        lhs.lists == rhs.lists
    }
    
    @Published var lists: [UserList] = []
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(lists)
    }
}

class UserList: Codable, ObservableObject, Hashable, Identifiable {
    enum CodingKeys: CodingKey {
        case listName
        case listItems
        case id
        case newList
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        listName = try container.decode(String.self, forKey: .listName)
        listItems = try container.decode([String].self, forKey: .listItems)
        id = try container.decode(UUID.self, forKey: .id)
        newList = try container.decode(Bool.self, forKey: .newList)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(listName, forKey: .listName)
        try container.encode(listItems, forKey: .listItems)
        try container.encode(id, forKey: .id)
        try container.encode(newList, forKey: .newList)
    }
    
    static func == (lhs: UserList, rhs: UserList) -> Bool {
        lhs.id == rhs.id
    }
    
    @Published var listName: String
    @Published var listItems: [String]
    @Published var id = UUID()
    @Published var newList: Bool
    
    init(listName: String, listItems: [String], newList: Bool) {
        self.listName = listName
        self.listItems = listItems
        self.newList = newList
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(listName)
    }
}
