//
//  PopoverBootcamp.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 31/10/2022.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                
                Spacer()
            }
            // METHOD 1 Sheets
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            // METHOD 2 Transitions
//            ZStack {
//
//                if showNewScreen {
//                    NewScreen1(showNewScreen: $showNewScreen)
//                        .transition(.move(edge: .bottom))
//                        .padding(.top, 100)
//                        .animation(.easeIn(duration: 1.0), value: showNewScreen)
//                }
//            }
//            .zIndex(2.0)
            
            // METHOD 3 Animations
            NewScreen1(showNewScreen: $showNewScreen)
                .padding(.top, 40)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var displayMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
            Button {
                displayMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

struct NewScreen1: View {
    
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
            Button {
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
//        NewScreen()
    }
}
