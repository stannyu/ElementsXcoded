//
//  PaddingAndSpacer.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 14/10/2022.
//

import SwiftUI

struct PaddingAndSpacer: View {
    var body: some View {
        //        PaddingsView()
        
        SpacersView()
    }
}

struct PaddingAndSpacer_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacer()
    }
}

struct PaddingsView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("this is the description od what we will do on the screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 10.0)
        )
        .padding(.horizontal, 10)
    }
}

struct SpacersView: View {
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                Image(systemName: "xmark")
                    .font(.title)
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                
                Image(systemName: "gear")
                    .font(.title)
                
                
                //            Spacer()
                //                .frame(height: 10)
                //                .background(Color.orange)
                //
                //            Rectangle()
                //                .frame(width: 100, height: 100)
                //                .cornerRadius(10)
                //
                //            Spacer()
                //                .frame(height: 10)
                //                .background(Color.orange)
                //
                //
                //            Rectangle()
                //                .fill(Color(.systemTeal))
                //                .frame(width: 100, height: 100)
                //                .cornerRadius(10)
                //            Spacer(minLength: 150)
                //                .frame(height: 10)
                //                .background(Color.orange)
            }
            .background(Color.yellow)
            .padding(.horizontal)
            .background(Color.blue)
            
            Spacer()
                .frame(width: 10)
                .background(Color.orange)
        }
        
    }
}
