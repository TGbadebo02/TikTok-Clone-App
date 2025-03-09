//
//  Feed-View.swift
//  TikTokClone
//
//  Created by TJ Gbadebo on 05/03/2025.
//

import SwiftUI

struct Feed_View: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 0){
                ForEach(0 ..< 10){ post in
                    FeedCell(post: post)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea(.all)
    }
}

#Preview {
    Feed_View()
}
