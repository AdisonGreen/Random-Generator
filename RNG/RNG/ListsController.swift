//
//  ListsController.swift
//  RNG
//
//  Created by Adison Green on 1/14/22.
//

import Foundation

struct ListsController {
    static private let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    private let archiveURL = ListsController.documentsDirectory.appendingPathComponent("Random_Generator_Lists").appendingPathExtension("plist")

    static let shared = ListsController()

    var lists: [UserLists] = [] {
        didSet {
            saveToFile(list: lists)
        }
    }

    init() {
        loadFromFile()
    }

    mutating func save(list: UserLists) {
        if let index = lists.firstIndex(where: { existingList in
            existingList.id == list.id
        }){
            lists[index] = list
        } else {
            self.lists.append(list)
        }
    }

    private func saveToFile(list: [UserLists]) {
        let propertyListEncoder = PropertyListEncoder()
        let encodedLists = try? propertyListEncoder.encode(list)
        try? encodedLists?.write(to: archiveURL, options: .noFileProtection)
    }

    private mutating func loadFromFile() {
        let propertyListDecoder = PropertyListDecoder()
        if let retrievedListsData = try? Data(contentsOf: archiveURL),
           let decodedLists = try? propertyListDecoder.decode(Array<UserLists>.self, from: retrievedListsData) {
            lists = decodedLists
        } else {
            lists = sampleLists()
        }
    }

    private func sampleLists() -> [UserLists] {
        return [UserLists(listName: "Colors", listItems: ["Blue", "Red", "Yellow", "Orange", "Pink", "Green", "Black", "White", "Purple", "Brown", "Gray"]), UserLists(listName: "Food", listItems: ["Hamburger", "Pizza"])]
    }
}
