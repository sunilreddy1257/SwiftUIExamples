//
//  ContactDetails.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 07/06/23.
//

import SwiftUI

struct ContactDetails: View {
    var contact: Contact
    var body: some View {
        VStack() {
            Image("Sunil_Reddy")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .shadow(radius: 3)
            Form {
                Section {
                    HStack() {
                        Text("Name")
                        Spacer()
                        Text(contact.name)
                    }
                    HStack() {
                        Text("Phone")
                        Spacer()
                        Text(contact.phonoe)
                    }
                    HStack() {
                        Text("Address")
                        Spacer()
                        Text(contact.address)
                    }
                }
                Section {
                    Button {
                        print("Send a message")
                    } label: {
                        Text("Send message")
                    }
                    
                    Button {
                        print("Call")
                    } label: {
                        Text("Call")
                    }

                }
            }
        }
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(contact: contactsData[0])
    }
}
