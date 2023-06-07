//
//  TabBarExample.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 07/06/23.
//

import SwiftUI

struct TabBarExample: View {
    var body: some View {
        TabView {
            MessageView()
                .tabItem {
                Image(systemName: "message.fill")
                Text("Message")
            }
            
            VideoView()
                .tabItem {
                Image(systemName: "video.fill")
                Text("Video")
            }
            
            PersonView()
                .tabItem {
                Image(systemName: "person.fill")
                Text("Person")
            }
        }
    }
}

struct TabBarExample_Previews: PreviewProvider {
    static var previews: some View {
        TabBarExample()
    }
}

struct MessageView: View {
    var body: some View {
        Text("Message View")
    }
}

struct VideoView: View {
    var body: some View {
        Text("Video View")
    }
}

struct PersonView: View {
    var body: some View {
        Color.blue
    }
}
