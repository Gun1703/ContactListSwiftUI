//
//  ContactList.swift
//  ContactListSwiftUI
//
//  Created by Gleb Gunin on 06.05.2023.
//

import SwiftUI

struct ContactList: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts, id: \.phone) { contact in
                NavigationLink(destination: ContactDetails(person: contact)) {
                    PersonRow(person: contact)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contacts: Person.getContacts())
    }
}
