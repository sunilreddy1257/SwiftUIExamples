//
//  TableViewSectionExample.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 07/06/23.
//

import SwiftUI

struct TableViewSectionExample: View {
    
    var developerSections: [DeveloperSections] = []
    
    var body: some View {
        
        NavigationView {
            List(developerSections) { item in
                Section {
                    SectionPlayerCell(players: item.players)
                    /*List(item.players) { player in
                        Text(player.name)
                        /*VStack(alignment: .leading) {
                            Text(player.name)
                            Text(player.subHeadLine)
                        }*/
                    }*/
                  
                } header: {
                    Text(item.name)
                        .textCase(nil)
                        .font(.system(size: 15))
                } footer: {
                    Text("Section Footer Header")
                }
            }.scrollIndicators(.hidden)
            .navigationTitle("iOS Positions")
            .navigationBarTitleDisplayMode(.inline)
        }
       
       
    }
}

struct TableViewSectionExample_Previews: PreviewProvider {
    static var previews: some View {
        TableViewSectionExample(developerSections: sectionOfDevelopersData)
    }
}



struct SectionPlayerCell: View {
    var players: [Player]
    var body: some View {
        ForEach(players) { player in
            VStack(alignment: .leading){
                /*@START_MENU_TOKEN@*/Text(player.name)/*@END_MENU_TOKEN@*/
                Text(player.subHeadLine)
            }
        }
    }
}

