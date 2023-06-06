//
//  TextExample.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 06/06/23.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        Text(DataManager.operationQueueData)
            //.lineLimit(3)
            .foregroundColor(.red)
            .fontWeight(.heavy)
            .font(.system(.title))
            .multilineTextAlignment(.center)
            .lineSpacing(5)
            .padding()
            .rotationEffect(.degrees(45))
    }
}

struct TextExample_Previews: PreviewProvider {
    static var previews: some View {
        TextExample()
    }
}
