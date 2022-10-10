//
//  ButtonsGradientPage.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 10/10/2022.
//

import SwiftUI

struct ButtonsGradientPage: View {
    var body: some View {
        VStack {
            Button {
                print("some text")
            } label: {
                Text("Button text")
            }
            .padding()
            .frame(width: 200, height: 50, alignment: .center)
            .background(Color(.systemTeal))
            .foregroundColor(Color(.white))
            .clipShape(Capsule())
        }
    }
}

struct ButtonsGradientPage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsGradientPage()
    }
}
