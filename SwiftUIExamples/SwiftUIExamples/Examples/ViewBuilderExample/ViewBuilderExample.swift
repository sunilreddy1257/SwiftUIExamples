//
//  ViewBuilderExample.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 07/06/23.
//

import SwiftUI

struct ViewBuilderExample: View {
    var body: some View {
        
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            VStack(alignment: .leading) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                ContactRowView(isUser: item%2 == 0 ? true : false)
            }
        }
    }
}

struct ViewBuilderExample_Previews: PreviewProvider {
    static var previews: some View {
        ViewBuilderExample()
    }
}

//View Builder Example
struct ContactRowView: View {
    var isUser: Bool
    @ViewBuilder var rowView: some View {
        if isUser == true {
            Text("UserName")
        } else {
            Image(systemName: "message.fill")
        }
    }
    
    var body: some View {
        rowView
    }
}
