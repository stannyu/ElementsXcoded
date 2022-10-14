//
//  TabviewPage.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 12/10/2022.
//

import SwiftUI

struct TabviewPage: View {
    var body: some View {
        TabView {
            ButtonsGradientPage()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            
            ListWithCellPage()
                .tabItem {
                    Label("cells", systemImage: "tablecells.badge.ellipsis")
                }
        }
    }
}

struct TabviewPage_Previews: PreviewProvider {
    static var previews: some View {
        TabviewPage()
            .preferredColorScheme(.dark)
    }
}
