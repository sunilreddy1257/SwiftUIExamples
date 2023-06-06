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
#if DEBUG
let playersData = [
Player(name: "Sunil", headline: "Sunil", subHeadLine: "iOS Developer", imageName: "photo"),
Player(name: "Test", headline: "Test", subHeadLine: "Mobile Developer", imageName: "photo"),
Player(name: "iOS", headline: "iOS", subHeadLine: "Developer", imageName: "photo"),
Player(name: "Test123", headline: "Test123", subHeadLine: "iOS Developer", imageName: "photo")
]
#endif
