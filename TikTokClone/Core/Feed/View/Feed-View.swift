//
//  Feed-View.swift
//  TikTokClone
//
//  Created by TJ Gbadebo on 05/03/2025.
//

import SwiftUI
import AVKit

struct Feed_View: View {
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 0){
                ForEach(viewModel.posts){ post in
                    FeedCell(post: post, player: player)
                        .id(post.id)
                }
            }
            .scrollTargetLayout()
        }
        .onAppear{player.play()}
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollPosition){ oldValue, newValue in
           playVideoOnChnageOfScrollPosition(postId: newValue)
           // print("DEBUG: Sscroll: \(newValue)")
            
        }
    }
        func playVideoOnChnageOfScrollPosition(postId: String? ){
            guard let curntPost = viewModel.posts.first(where: {$0.id == postId}) else { return }
            
            player.replaceCurrentItem(with: nil)
            let playerItem = AVPlayerItem(url: URL(string: curntPost.videoUrl)!)
            player.replaceCurrentItem(with: playerItem)
            
        }
    }

#Preview {
    Feed_View()
}
