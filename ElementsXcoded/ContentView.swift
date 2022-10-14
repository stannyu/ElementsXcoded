//
//  ContentView.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 10/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                    VStack {
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                        Text("Hello, world!")
                        
                        NavigationLink {
                            ButtonsGradientPage()
                        } label: {
                            Text("Buttons Gradient Page")
                        }
                        .padding()
                        .frame(width: 300)
                        .background(Color(.systemCyan))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        
                        NavigationLink {
                            ListWithCellPage()
                        } label: {
                            Text("List With Cell Page")
                        }
                        .padding()
                        .frame(width: 300)
                        .background(Color(.systemCyan))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        
                        NavigationLink {
                            PaddingAndSpacer()
                        } label: {
                            Text("Padding And Spacer")
                        }
                        .padding()
                        .frame(width: 300)
                        .background(Color(.systemCyan))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        
                    }
                    .padding()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
