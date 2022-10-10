//
//  VideoDetailView.swift
//  ElementsXcoded
//
//  Created by Stas Yudzitski on 10/10/2022.
//

import SwiftUI

struct VideoDetailView: View {
    var video: Video
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40) {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: video.url, label: {
                ActionButton(title: "Watch now")
            })
        }
    }
}



struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoStructData.topTen.first!)
    }
}

struct ActionButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .modifier(ActionButtonModifier())
    }
}
