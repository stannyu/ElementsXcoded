//
//  TernaryBootcamp.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 19/10/2022.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isStartingState ? Color.red : Color(.systemTeal))
                .frame(width: 200, height: 100)
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
