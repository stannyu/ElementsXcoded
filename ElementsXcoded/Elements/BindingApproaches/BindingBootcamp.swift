//
//  BindingBootcamp.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 18/10/2022.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var backgroundColor: Color = Color.mint
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title.uppercased())
                    .foregroundColor(Color.white)
                
                MyContentView(backgroundColorSubview: $backgroundColor, itemTitle: $title)
            }
            
        }
    }
}

struct MyContentView: View {
    @Binding var backgroundColorSubview: Color
    @Binding var itemTitle: String
    
    @State var buttonColor: Color = Color.blue
    
    var body: some View {
        Button(action: {
            backgroundColorSubview = Color(.systemTeal)
            buttonColor = Color.orange
            itemTitle = "New item title"
        }, label: {
            Text("Button")
                .foregroundColor(Color.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
