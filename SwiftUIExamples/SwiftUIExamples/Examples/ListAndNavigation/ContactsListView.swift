//
//  ContactsListView.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 07/06/23.
//

import SwiftUI

struct ContactsListView: View {
    
    var contacts: [Contact] = []
    var body: some View {
        NavigationView {
            List(contacts) { item in
                NavigationLink(destination:
                    ContactDetails(contact: item)) {
                    ContactRow(contact: item)
                }
            }
            .navigationTitle("Contacts")
        }
    }
}

struct ContactsListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListView(contacts: contactsData)
    }
}

struct ContactRow: View {
    var contact: Contact
    var body: some View {
            HStack() {
                Image(systemName: "person.fill")
                VStack(alignment:.leading) {
                    Text(contact.name)
                    Text(contact.phonoe)
                }
            }
    }
}

