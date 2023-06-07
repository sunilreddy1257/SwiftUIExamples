//
//  PickerExample.swift
//  SwiftUIExamples
//
//  Created by Sunil Kumar Reddy Sanepalli on 07/06/23.
//

import SwiftUI

struct PickerExample: View {
    
    @State var hoursValue = 0
    @State var minutesValue = 0
    @State var secondsValue = 0

    
    var hours = [Int](0..<12)
    var minutes = [Int](0..<60)
    var seconds = [Int](0..<60)
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Picker(selection: $hoursValue, label: Text("")) {
                    ForEach (0 ..< self.hours.count, id: \.self) { index in
                        Text("\(self.hours[index]) h").tag(index)
                    }
                }
                .frame(width: geometry.size.width/3, height: 100, alignment: .center)
                
                Picker(selection: $minutesValue, label: Text("")) {
                    ForEach (0 ..< self.minutes.count, id: \.self) { index in
                        Text("\(self.minutes[index]) m").tag(index)
                    }
                }
                .frame(width: geometry.size.width/3, height: 100, alignment: .center)

                Picker(selection: $secondsValue, label: Text("")) {
                    ForEach (0 ..< self.seconds.count, id: \.self) { index in
                        Text("\(self.seconds[index]) s").tag(index)
                    }
                }
                .frame(width: geometry.size.width/3, height: 100, alignment: .center)

            }
        }
    }
}

struct PickerExample_Previews: PreviewProvider {
    static var previews: some View {
        PickerExample()
    }
}
