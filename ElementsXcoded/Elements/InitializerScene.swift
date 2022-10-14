//
//  InitializerScene.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 14/10/2022.
//

import SwiftUI

struct InitializerScene: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else if fruit == .orange {
            self.title = "Oranges"
            self.backgroundColor = .orange
        } else {
            self.title = "Something"
            self.backgroundColor = .blue
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .underline()
            
            Text("\(title)")
                .font(.headline)
                .foregroundColor(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerScene_Previews: PreviewProvider {
    static var previews: some View {
        InitializerScene(count: 100, fruit: .orange)
    }
}
