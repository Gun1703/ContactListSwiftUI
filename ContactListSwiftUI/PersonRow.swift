//
//  PersonRow.swift
//  ContactListSwiftUI
//
//  Created by Gleb Gunin on 06.05.2023.
//

import SwiftUI

struct PersonRow: View {
    let person: Person
    
    var body: some View {
        
        HStack {
            Text("\(person.name) \(person.secondName)")
                .font(.body)
        }
        .padding()
        
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person.getContacts().last  ?? Person(name: "Иван", secondName: "Иванов", phone: "12345", email: "a@m.ru"))
    }
}
