//
//  ToggleSwitchExample.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 07/06/23.
//

import SwiftUI

struct ToggleSwitchExample: View {
    
    @State var isFavourite = false
    var body: some View {
        VStack {
            Text(isFavourite ? "Favourite Data": "Normal Data")
            /*Button {
                isFavourite = !isFavourite
            } label: {
                Text("Change")
            }*/
            
            Toggle("Change Data", isOn: $isFavourite).padding()
                .tint(.red)

        }
    }
}

struct ToggleSwitchExample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleSwitchExample()
    }
}
