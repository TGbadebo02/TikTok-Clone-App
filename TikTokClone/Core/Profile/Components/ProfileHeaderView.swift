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
                UserStatview(value: 200, title: "Following")
                UserStatview(value: 300, title: "Followers")
                UserStatview(value: 23033, title: "Likes")
                
            }
            Button{
                
            }label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}

