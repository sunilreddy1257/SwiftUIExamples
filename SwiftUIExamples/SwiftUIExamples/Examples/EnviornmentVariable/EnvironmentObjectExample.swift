//
//  EnvironmentObjectExample.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 07/06/23.
//

import SwiftUI

class GameSettings: ObservableObject {
    @Published var score = 0
}

struct EnvironmentObjectExample: View {
    @StateObject var settings = GameSettings()
    var body: some View {
        NavigationView {
            VStack {
                Button {
                    settings.score += 1
                } label: {
                    Text("Increase score")
                }
                
                NavigationLink {
                    ScoreData()
                    //.environmentObject(settings)
                } label: {
                    Text("Navigate to Score Details")
                }
            }
        }.environmentObject(settings)
    }
}

struct EnvironmentObjectExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectExample()
    }
}

struct ScoreData: View {
    @EnvironmentObject var settings: GameSettings
    var body: some View {
        Text("Score is...\(settings.score)")
    }
}
