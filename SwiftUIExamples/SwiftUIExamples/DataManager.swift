//
//  DataManager.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 06/06/23.
//

import Foundation

struct DataManager {
    static let operationQueueData = "Operations in Swift are a powerful way to separate responsibilities over several classes while keeping track of progress and dependencies. They’re formally known as NSOperations and used in combination with the OperationQueue \nAn Operation is typically responsible for a single synchronous task. It’s an abstract class and never used directly. You can make use of the system-defined BlockOperation subclass or by creating your own subclass. You can start an operation by adding it to an OperationQueue or by manually calling the start method. However, it’s highly recommended to give full responsibility to the OperationQueue to manage the state"
}

struct Player: Identifiable {
    var id = UUID()
    var name: String
    var headline: String
    var subHeadLine: String
    var imageName: String
//var imageName: String {return name}
}

struct DeveloperSections: Identifiable {
    var id = UUID()
    var name: String
    var players: [Player]
}

struct Contact: Identifiable {
    var id = UUID()
    var name: String
    var phonoe: String
    var email: String
    var address: String
}


#if DEBUG

let contactsData = [
    Contact(name: "TestUser1", phonoe: "9703013034", email: "test@gmail.com", address: "Bengalure"),
    Contact(name: "testUser2", phonoe: "9703013033", email: "test1@gmail.com", address: "Hyderabad"),
    Contact(name: "TestUser3", phonoe: "9703013032", email: "test2@gmail.com", address: "Pune"),
    Contact(name: "TestUser4", phonoe: "9703013031", email: "test3@gmail.com", address: "Noida")
]

let playersData = [
Player(name: "Sunil", headline: "Sunil", subHeadLine: "iOS Developer", imageName: "photo"),
Player(name: "Test", headline: "Test", subHeadLine: "Mobile Developer", imageName: "photo"),
Player(name: "iOS", headline: "iOS", subHeadLine: "Developer", imageName: "photo"),
Player(name: "Test123", headline: "Test123", subHeadLine: "iOS Developer", imageName: "photo"),
Player(name: "Sunil", headline: "Sunil", subHeadLine: "iOS Developer", imageName: "photo"),
Player(name: "Test", headline: "Test", subHeadLine: "Mobile Developer", imageName: "photo"),
Player(name: "iOS", headline: "iOS", subHeadLine: "Developer", imageName: "photo"),
Player(name: "Test123", headline: "Test123", subHeadLine: "iOS Developer", imageName: "photo"),
Player(name: "Sunil", headline: "Sunil", subHeadLine: "iOS Developer", imageName: "photo"),
Player(name: "Test", headline: "Test", subHeadLine: "Mobile Developer", imageName: "photo"),
Player(name: "iOS", headline: "iOS", subHeadLine: "Developer", imageName: "photo"),
Player(name: "Test123", headline: "Test123", subHeadLine: "iOS Developer", imageName: "photo")
]

let sectionOfDevelopersData = [
        DeveloperSections(name: "iOS Developer", players: [
            Player(name: "Sunil", headline: "Sunil", subHeadLine: "iOS Developer", imageName: "photo"),
            Player(name: "Test", headline: "Test", subHeadLine: "iOS Developer", imageName: "photo"),
            Player(name: "iOS", headline: "iOS", subHeadLine: "iOS Developer", imageName: "photo"),
            Player(name: "Test123", headline: "Test123", subHeadLine: "iOS Developer", imageName: "photo")
        ]),
        DeveloperSections(name: "Mobile Developer", players: [
Player(name: "Sunil", headline: "Sunil", subHeadLine: "Mobile Developer", imageName: "photo"),
Player(name: "Test", headline: "Test", subHeadLine: "Mobile Developer", imageName: "photo"),
Player(name: "iOS", headline: "iOS", subHeadLine: "Mobile Developer", imageName: "photo"),
Player(name: "Test123", headline: "Test123", subHeadLine: "Mobile Developer", imageName: "photo")
]),
        DeveloperSections(name: "Sr. iOS Developer", players: [
Player(name: "Sunil", headline: "Sunil", subHeadLine: "Sr. iOS Developer", imageName: "photo"),
Player(name: "Test", headline: "Test", subHeadLine: "Sr. iOS Developer", imageName: "photo"),
Player(name: "iOS", headline: "iOS", subHeadLine: "Sr. iOS Developer", imageName: "photo"),
Player(name: "Test123", headline: "Test123", subHeadLine: "Sr. iOS Developer", imageName: "photo")
]),
        DeveloperSections(name: "iOS Lead", players: [
Player(name: "Sunil", headline: "Sunil", subHeadLine: "iOS Lead", imageName: "photo"),
Player(name: "Test", headline: "Test", subHeadLine: "iOS Lead", imageName: "photo"),
Player(name: "iOS", headline: "iOS", subHeadLine: "iOS Lead", imageName: "photo"),
Player(name: "Test123", headline: "Test123", subHeadLine: "iOS Lead", imageName: "photo")
])
]

#endif
