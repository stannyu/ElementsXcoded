//
//  ConditionalBootcamp.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 19/10/2022.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showRectangle: Bool = false
    @State var showCircle: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Circle Button: \(showCircle.description)") {
                // toggle switches boolean
                showCircle.toggle()
            }
            
            Button("Rectangle button  \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
//          if showCircle {    <--- equivalent like in js, also !showCircle is opposite
            if showCircle == true {
                Circle()
                    .frame(width: 100, height: 100)
            } else if showRectangle {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
            } else {
                Text("No shape yet")
                    .font(.largeTitle)
            }
            
            // and &&, or - || like in js
            if showCircle && showRectangle {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color(.systemTeal))
                    .frame(width: 250, height: 100)
            }
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
