//
//  ContactListDetail.swift
//  ContactListSwiftUI
//
//  Created by Gleb Gunin on 06.05.2023.
//

import SwiftUI

struct DetailedContactsList: View {
    let contacts: [Person]
    var body: some View {
        List(contacts, id: \.phone) { contact in
            Section(header: Text("\(contact.fullName)")) {
                HStack{
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                    VStack{
                        HStack{
                            Image(systemName: "phone")
                            Text("\(contact.phone)")
                        }
                        HStack{
                            Image(systemName: "envelope")
                            Text("\(contact.email)")
                        }
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct DetailedContactsList_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactsList(contacts: Person.getContacts())
    }
}
