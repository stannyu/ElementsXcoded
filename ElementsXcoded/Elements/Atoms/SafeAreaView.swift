//
//  SafeAreaView.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 17/10/2022.
//

import SwiftUI

struct SafeAreaView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
//        .background(Color.blue)
        /**
         rule of thumb is to use ignore safe area only for backgrounds
         */
        .background(
            Color.green
                .ignoresSafeArea(.all)
        )
    }
}

struct SafeAreaView_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaView()
    }
}
