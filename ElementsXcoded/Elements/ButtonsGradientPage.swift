//
//  ButtonsGradientPage.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 10/10/2022.
//

import SwiftUI

struct ButtonsGradientPage: View {
    
    var applyTint = true
    var customGradient = Gradient(colors: [Color(.systemTeal), Color(.systemPurple)])
    
    var body: some View {
//        ScrollView {
            VStack(spacing: 20) {
                Button {
                    print("some text")
                } label: {
                    Text("Button text")
                }
                .padding()
                .frame(width: 200, height: 50, alignment: .center)
                .background(LinearGradient(gradient: customGradient, startPoint: .topLeading, endPoint: .bottomTrailing))
                .foregroundColor(Color(.white))
                .clipShape(Capsule())
                
                Button {
                    print("some text")
                } label: {
                    Text("Button text")
                }
                .padding()
                .frame(width: 200, height: 50, alignment: .center)
                .foregroundColor(Color.mint)
                .overlay(Capsule().stroke(LinearGradient(gradient: customGradient, startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3))
                
                Button {
                    print("some text")
                } label: {
                    Text("Button text")
                }
                .padding()
                .frame(width: 160, height: 160, alignment: .center)
                .background(RadialGradient(gradient: customGradient, center: .center, startRadius: 5, endRadius: 100))
                .foregroundColor(Color.mint)
                .clipShape(Circle())
                
                Button {
                    print("some text")
                } label: {
                    Text("Button text")
                }
                .padding()
                .frame(width: 160, height: 160, alignment: .center)
                .background(AngularGradient(gradient: Gradient(colors: [Color(.systemTeal), Color(.systemPurple), Color(.systemTeal)]), center: .topLeading, angle: Angle(degrees: 270)))
                .foregroundColor(Color.mint)
                .clipShape(Circle())
                
                Button {
                } label: {
                    Text("Bordered")
                }
                .buttonStyle(.bordered)
                
                Button {
                } label: {
                    Text("Borderless")
                }
                .buttonStyle(.borderless)
                .tint(applyTint ? .mint : .primary)
                
                Spacer()
            }
//        }
    }
}

struct ButtonsGradientPage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsGradientPage()
            .preferredColorScheme(.dark)
    }
}
