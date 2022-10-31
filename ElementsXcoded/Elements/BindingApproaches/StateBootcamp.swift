//
//  StateBootcamp.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 18/10/2022.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1".uppercased(), action: {
                        backgroundColor = .mint
                        myTitle = "Button 1 was presed".uppercased()
                        count += 1
                    })
                    Button("Button 2".uppercased(), action: {
                        backgroundColor = .purple
                        myTitle = "Button 2 was presed".uppercased()
                        count -= 1
                    })
                }
            }
            .foregroundColor(Color.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
