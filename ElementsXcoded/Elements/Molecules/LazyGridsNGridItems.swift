//
//  LazyGridsNGridItems.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 17/10/2022.
//

import SwiftUI

struct LazyGridsNGridItems: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.blue)
                            .padding()
                        
                    }
                    
                    Section {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.red)
                            .padding()
                        
                    }
                })
        }
        
        //        InstaGridView()
    }
}

struct LazyGridsNGridItems_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridsNGridItems()
    }
}

struct InstaGridView: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.white)
                .frame(height: 400)
            LazyVGrid(columns: columns) {
                ForEach(0..<50) { index in
                    Rectangle()
                        .frame(height: 150)
                }
            }
        }
    }
}
