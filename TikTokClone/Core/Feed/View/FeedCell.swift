//
//  FeedCell.swift
//  TikTokClone
//
//  Created by TJ Gbadebo on 05/03/2025.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    let post: Post
    var player: AVPlayer
    
    init(post: Post, player: AVPlayer){
        self.post = post
        self.player = AVPlayer(url: URL(string: post.videoUrl)!)
    }
        
    var body: some View {
        ZStack{
            customVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal, .vertical])
            
            VStack{
                Spacer()
                
                HStack(alignment: .bottom){
                    VStack(alignment: .leading){
                        Text("John Doe")
                            .fontWeight(.semibold)
                        
                        Text("Rocket ship about to goooo")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    
                    Spacer()
                    
                    VStack(spacing: 28){
                        
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.gray)
                        
                        Button{
                            
                        } label:{
                            VStack{
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width:28, height:28)
                                    .foregroundStyle(.white)
                                Text("27")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                            }
                        }
                        Button{
                            
                        } label:{
                            VStack{
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width:22, height:28)
                                    .foregroundStyle(.white)
                                Text("27")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                            }
                        }
                        Button{
                            
                        } label:{
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width:22, height:28)
                                .foregroundStyle(.white)
                        }
                        
                        Button{
                            
                        }label:{
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width:22, height:28)
                                .foregroundStyle(.white)
                            }
                        }
                    }
                .padding(.bottom, 80)
                }
            .padding()
            }
        .onAppear{
            print("DEBUG: Post id\(post.id)")
          }
        }
    }
#Preview {
    FeedCell(post : Post(id: NSUUID().uuidString, videoUrl: ""), player: AVPlayer())
}
