//
//  VideoPlayerView.swift
//  Animals
//
//  Created by Mehmet Arıkan on 29.08.2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
        VStack{
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4"))
            {
                
            }
            .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .padding(.top, 6)
                .padding(.horizontal, 8)
                ,alignment: .topLeading
            )
        }//: Vstack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
