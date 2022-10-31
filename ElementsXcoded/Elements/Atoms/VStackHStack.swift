//
//  VStackHStack.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 15/10/2022.
//

import SwiftUI

struct VStackHStack: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: .leading)
    ]
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<14, content: { category in
                    HorizontalGridComponent()
                })
            }
        }
        
    }
}

struct VStackHStack_Previews: PreviewProvider {
    static var previews: some View {
        VStackHStack()
    }
}

struct HorizontalGridComponent: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<5, content: { item in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .shadow(color: Color.black.opacity(0.2), radius: 10)
                        .frame(width: 200, height: 150)
                        .padding()
                })
            }
        }
    }
}
