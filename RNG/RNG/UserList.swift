//
//  List.swift
//  RNG
//
//  Created by Adison Green on 1/11/22.
//

import Foundation

class UserLists: ObservableObject {
    @Published var lists: [UserList] = []
}

class UserList: Codable, ObservableObject {
    enum CodingKeys: CodingKey {
        case listName
        case listItems
        case id
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        listName = try container.decode(String.self, forKey: .listName)
        listItems = try container.decode([String].self, forKey: .listItems)
        id = try container.decode(UUID.self, forKey: .id)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(listName, forKey: .listName)
        try container.encode(listItems, forKey: .listItems)
        try container.encode(id, forKey: .id)
    }
    
    static func == (lhs: UserList, rhs: UserList) -> Bool {
        lhs.id == rhs.id
    }
    
    @Published var listName: String
    @Published var listItems: [String]
    @Published var id = UUID()
    
    init(listName: String, listItems: [String]) {
        self.listName = listName
        self.listItems = listItems
    }
}
