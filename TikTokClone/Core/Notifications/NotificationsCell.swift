//
//  NotificationsCell.swift
//  TikTokClone
//
//  Created by TJ Gbadebo on 06/03/2025.
//

import SwiftUI

struct NotificationsCell: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 28, height: 28)
                .foregroundStyle(Color(.systemGray5))
            
            HStack{
                Text("jane.done")
                    .font(.footnote)
                .fontWeight(.semibold) +
                
                Text(" liked one of your posts ")
                    .font(.footnote) +
                
                Text("3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
             }
            Spacer()
            
            Rectangle()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 10))
         }
        .padding()
    }
}

#Preview {
    NotificationsCell()
}
