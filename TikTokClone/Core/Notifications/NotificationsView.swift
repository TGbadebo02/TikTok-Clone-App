//
//  Notifications-View.swift
//  TikTokClone
//
//  Created by TJ Gbadebo on 06/03/2025.
//

import SwiftUI

struct Notifications_View: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 12){
                    ForEach(0 ..< 10){ notification in
                        NotificationsCell()
                    }
                }
            }
            .navigationTitle(Text("Notifications"))
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    Notifications_View()
}
