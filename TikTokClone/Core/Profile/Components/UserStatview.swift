//
//  UserStatview.swift
//  TikTokClone
//
//  Created by TJ Gbadebo on 06/03/2025.
//

import SwiftUI

struct UserStatview: View {
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

#Preview {
    UserStatview(value: 5, title: "Followers")
}
