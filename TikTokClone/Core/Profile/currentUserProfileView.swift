//
//  currentUserProfileView.swift
//  TikTokClone
//
//  Created by TJ Gbadebo on 06/03/2025.
//

import SwiftUI

struct currentUserProfileView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 2){
                    //profile header
                    ProfileHeaderView()
                    
                    //post grid view
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle(Text("Profile"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    currentUserProfileView()
}
