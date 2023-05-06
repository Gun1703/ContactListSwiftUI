//
//  ContactDetails.swift
//  ContactListSwiftUI
//
//  Created by Gleb Gunin on 06.05.2023.
//

import SwiftUI

struct ContactDetails: View {
    let person: Person
    
    var body: some View {
        List {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 250, height: 250)
                .foregroundColor(.gray)
                .padding()
            HStack{
                Image(systemName: "phone")
                Text("\(person.phone)")
            }
            HStack{
                Image(systemName: "envelope")
                Text("\(person.email)")
            }
            .navigationTitle("\(person.fullName)")
        }
    }
}

struct ContactDelails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(person: Person.getContacts().last  ?? Person(name: "Иван", secondName: "Иванов", phone: "12345678", email: "a@m.ru"))
    }
}
