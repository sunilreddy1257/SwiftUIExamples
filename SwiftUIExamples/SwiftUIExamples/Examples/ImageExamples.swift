//
//  ImageExamples.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 06/06/23.
//

import SwiftUI

struct ImageExamples: View {
    var body: some View {
        //System image
       /* Image(systemName: "cloud.fill")
            .foregroundColor(.red)
            .font(.system(size: 100))
            .shadow(color:.blue ,radius: 10, x: 0, y: 10)*/
        Image("Sunil_Reddy")
            .resizable()
            //.edgesIgnoringSafeArea(.all)
            //.scaledToFit()
            //.aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 500)
            //.clipShape(Circle())
            .clipShape(Ellipse())
            //.opacity(0.2)
            /*.overlay(
                Image(systemName: "heart.fill")
                    .foregroundColor(.red),
                alignment: .bottom
            )*/
            .overlay(
                Text("I am Sunil, iOS Developer")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.black),
                alignment: .bottom
            )
        
    }
}

struct ImageExamples_Previews: PreviewProvider {
    static var previews: some View {
        ImageExamples()
    }
}
