//
//  TextFieldExamples.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 06/06/23.
//

import SwiftUI

struct TextFieldExamples: View {

    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Sign in")
                    .bold()
                    .font(.system(size: 30))
                TextField("Enter your email", text: $email)
                    .textFieldStyle(.roundedBorder)
            }
            VStack(alignment: .leading) {
                Text("Password")
                    .bold()
                    .font(.system(size: 30))
                TextField("Enter your password", text: $password)
                    .textFieldStyle(.roundedBorder)
            }
        }
    }
}

struct TextFieldExamples_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExamples()
    }
}
