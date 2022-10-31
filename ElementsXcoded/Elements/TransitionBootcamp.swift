//
//  TransitionBootcamp.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 23/10/2022.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button".uppercased(), action: {
                    showView.toggle()
//                    withAnimation(.easeInOut) {
//                         showView.toggle()
//                    }
                })
                Spacer()
            }
            
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5) // half of the height of the screen !!!
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
//                    .transition(.move(edge: .bottom))
                    .animation(.spring(response: 0.25)) // deprecated version of .animation modifier
//                    .animation(.spring(response: 0.25), value: showView) // check how it really works
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
