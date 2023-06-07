//
//  SampleView.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 07/06/23.
//

import SwiftUI

struct SampleView: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Hello, World!")
        }.padding()
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
    }
}
