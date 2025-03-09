//
//  ProfileHeaderView.swift
//  TikTokClone
//
//  Created by TJ Gbadebo on 06/03/2025.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16){
            VStack(spacing: 8){
                //Profile image.
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                //username
                Text("@John.Doe")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            //stats View
            HStack(spacing: 16){
                UserStatView(value: 200, title: "Following")
                UserStatView(value: 300, title: "Followers")
                UserStatView(value: 23033, title: "Likes")
                
               
                
            }
        }
    }
}

#Preview {
    ProfileHeaderView()
}

struct UserStatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}
