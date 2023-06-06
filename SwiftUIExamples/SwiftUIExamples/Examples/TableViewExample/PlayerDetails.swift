//
//  PlayerDetails.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 06/06/23.
//

import SwiftUI

struct PlayerDetails: View {
    let player: Player
    var body: some View {
        VStack {
            VStack {
                Image(systemName: player.imageName)
                
                Divider()
                
                Text(player.name)
                Text(player.subHeadLine)
            }
            .padding()
            .navigationBarTitle(Text(player.name), displayMode: .inline)
        }
        

    }
}

struct PlayerDetails_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetails(player:playersData[0])
    }
}
