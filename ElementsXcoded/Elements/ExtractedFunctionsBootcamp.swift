//
//  ExtractedFunctionsBootcamp.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 18/10/2022.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    @State var backgroundColor: LinearGradient = LinearGradient(
        gradient: Gradient(colors: [Color(.systemTeal), Color(.systemPurple)]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    );
    
    var body: some View {
        ZStack {
            // bg
            Rectangle()
                .fill(backgroundColor)
                .ignoresSafeArea()
            
            // content layer extracted
//            ContentLayer
            
            MyItemView(onPressButton: self.buttonPresed)
        }
    }
    
    var ContentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPresed()
            } label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }
    
    func buttonPresed() {
        backgroundColor = LinearGradient(
            gradient: Gradient(colors: [Color(.systemRed), Color(.systemCyan)]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}

struct MyItemView: View {
    
    @State var onPressButton: () -> Void
    
    var body: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                onPressButton()
            } label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }
}
