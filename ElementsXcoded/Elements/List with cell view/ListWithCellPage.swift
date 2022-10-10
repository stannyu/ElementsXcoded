//
//  ListWithCellPage.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 10/10/2022.
//

import SwiftUI

struct ListWithCellPage: View {
    var videos: [Video] = VideoStructData.topTen
    
    var body: some View {
        NavigationView {
            List(videos, id: \.id) { video in
                NavigationLink( destination: VideoDetailView(video: video), label: {
                    VideoCell(video: video)
                })
            }
            .listStyle(.plain)
            .navigationTitle("Sean's top 10")
        }
    }
}

struct VideoCell: View {
    var video: Video
    
    var body: some View {
        HStack {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4)
                .padding(.vertical, 5)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ListWithCellPage_Previews: PreviewProvider {
    static var previews: some View {
        ListWithCellPage()
    }
}
