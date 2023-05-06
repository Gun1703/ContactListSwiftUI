//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Gleb Gunin on 06.05.2023.
//

import Foundation

struct Person: Hashable {
    let name: String
    let secondName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(secondName)"
    }
}

extension Person {
    static func getContacts() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let secondNames = DataManager.shared.secondNames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            secondNames.count,
            phones.count,
            emails.count)
        
        for index in 0..<iterationCount {
           let person = Person(
                name: names[index],
                secondName: secondNames[index],
                phone: phones[index],
                email: emails[index]
           )
            persons.append(person)
        }
        
        return persons
    }
}
