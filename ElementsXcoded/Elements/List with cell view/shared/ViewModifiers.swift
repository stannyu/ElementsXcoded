//
//  ViewModifiers.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 10/10/2022.
//

import Foundation
import SwiftUI

struct ActionButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold()
            .font(.title2)
            .frame(width: 280, height: 50)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

