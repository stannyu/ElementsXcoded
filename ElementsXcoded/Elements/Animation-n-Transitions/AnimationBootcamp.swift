//
//  AnimationBootcamp.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 19/10/2022.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        AnimationWithanimationFunc
//        AnimationWithModifier
//        AnimationSpringAnimation
       
    }
    
    var AnimationWithanimationFunc: some View {
        VStack {
            Button("Button") {
                withAnimation(
                    Animation
                        .easeInOut(duration: 0.4)
//                        .delay( 0.3)
//                        .repeatCount(3)
//                        .repeatCount(3, autoreverses: true)
                ) {
                    isAnimated.toggle()
                }
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25.0)
                .fill(isAnimated ? Color.green : Color(.systemCyan))
                .frame(
                    width: isAnimated ? 100: 300,
                    height: isAnimated ? 100: 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300: 0)
            
            Spacer()
        }
    }
    
    var AnimationWithModifier: some View {
        VStack {
            Button("Button", action: {
                isAnimated.toggle()
            })

            Spacer()

            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25.0)
                .fill(isAnimated ? Color(.systemMint) : Color(.systemBlue))
                .frame(
                    width: isAnimated ? 100: 300,
                    height: isAnimated ? 100: 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300: 0)
                .animation(
                    Animation
                        .easeInOut(duration: 0.2),
                    value: isAnimated
                )

            Spacer()
        }
    }
    
    var AnimationSpringAnimation: some View {
        VStack {
            Button("Press me", action: {
                isAnimated.toggle()
            })
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: isAnimated ? 350 : 50, height: 100)
//                .animation(.spring(
//                    response: 0.3,
//                    dampingFraction: 0.6,
//                    blendDuration: 1.0),
//                           value: isAnimated)
                .animation(.spring(response: 0.3, dampingFraction: 0.6), value: isAnimated)
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
