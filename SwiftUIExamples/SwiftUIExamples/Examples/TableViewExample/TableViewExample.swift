//
//  TableViewExample.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 06/06/23.
//

import SwiftUI

struct TableViewExample: View {
    var players: [Player] = []
    var body: some View {
        NavigationView {
        List(players) { item in
            PlayerCell(player: item)
        }
        .navigationTitle("Player Names")
        }
    }
}

struct TableViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TableViewExample(players: playersData)
    }
}

struct PlayerCell: View {
    let player: Player
    var body: some View {
        NavigationLink(destination:
                        PlayerDetails(player: player)
        ) {
            HStack {
                Image(systemName: player.imageName)
                VStack(alignment: .leading) {
                    Text(player.name)
                    Text(player.subHeadLine)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
