//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Gleb Gunin on 06.05.2023.
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.getContacts()
    
    var body: some View {
        TabView {
            ContactList(contacts: contacts)
                .tabItem {
                    Label("Contacts", systemImage: "person.3.sequence.fill")
                }
            DetailedContactsList(contacts: contacts)
                .tabItem {
                    Label("DetailedList", systemImage: "person.fill.viewfinder")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
