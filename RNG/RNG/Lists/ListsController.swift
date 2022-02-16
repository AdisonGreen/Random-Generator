//
//  ListsController.swift
//  RNG
//
//  Created by Adison Green on 1/14/22.
//

import Foundation
import SwiftUI
import Combine

class ListsController {
    static private let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    private let archiveURL = ListsController.documentsDirectory.appendingPathComponent("Random_Generator_Lists").appendingPathExtension("plist")

    static let shared = ListsController()

    @ObservedObject var userLists: UserLists = UserLists()
    var publisher: AnyCancellable?
    init() {
        loadFromFile()
        publisher = userLists.objectWillChange
            .sink { _ in
            self.saveToFile(list: self.userLists.lists)
        }
    }

    func add(list: UserList) {
        if let index = userLists.lists.firstIndex(where: { existingList in
            existingList.id == list.id
        }){
            userLists.lists[index] = list
        } else {
            self.userLists.lists.append(list)
        }
    }

    private func saveToFile(list: [UserList]) {
        let propertyListEncoder = PropertyListEncoder()
        let encodedLists = try? propertyListEncoder.encode(list)
        try? encodedLists?.write(to: archiveURL, options: .noFileProtection)
    }

    private func loadFromFile() {
        let propertyListDecoder = PropertyListDecoder()
        if let retrievedListsData = try? Data(contentsOf: archiveURL),
           let decodedLists = try? propertyListDecoder.decode(Array<UserList>.self, from: retrievedListsData) {
            userLists.lists = decodedLists
        } else {
            userLists.lists = sampleLists()
        }
    }

    private func sampleLists() -> [UserList] {
        return [UserList(listName: "Colors", listItems: ["Blue", "Red", "Yellow", "Orange", "Pink", "Green", "Black", "White", "Purple", "Brown", "Gray"], newList: false), UserList(listName: "Food", listItems: ["Hamburger", "Pizza", "Tacos", "Spaghetti", "Cereal"], newList: false)]
    }
}
