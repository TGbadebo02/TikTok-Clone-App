//
//  ExploreView.swift
//  TikTokClone
//
//  Created by TJ Gbadebo on 05/03/2025.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 16){
                    ForEach(0 ..< 20){ user in
                        UserCell()
                    }
                }
            }
            .navigationTitle(Text("Explore"))
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    ExploreView()
}
