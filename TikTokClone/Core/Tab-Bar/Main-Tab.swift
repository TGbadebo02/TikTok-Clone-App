//
//  Main-Tab.swift
//  TikTokClone
//
//  Created by TJ Gbadebo on 05/03/2025.
//

import SwiftUI

struct Main_Tab: View {
    //property keeps track of selected tab.
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection : $selectedTab){
           Feed_View()
                .tabItem {
                    VStack{
                        //if a tab isn't selected, it should display the house tab.
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            //helps with image variant that we want.
                            .environment(\.symbolVariants,selectedTab == 0 ? .fill : .none)
                        Text("Home")
                    }
                }
                .onAppear{selectedTab = 0}
                .tag(0)
            
            ExploreView()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 1 ? "person.2.fill" : "person.2")
                            .environment(\.symbolVariants,selectedTab == 1 ? .fill : .none)
                        Text("Friends")
                    }
                }
                .onAppear {selectedTab = 1}
                .tag(1)
            
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "plus")
                }
            Notifications_View()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                            .environment(\.symbolVariants,selectedTab == 3 ? .fill : .none)
                        Text("Inbox")
                    }
                }
                .onAppear {selectedTab = 3}
                .tag(3)
            currentUserProfileView()
                .tabItem{
                    VStack{
                        Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                        .environment(\.symbolVariants,selectedTab == 4 ? .fill : .none)
                        Text("Profile")
                    }
                }
                .onAppear() {selectedTab = 4}
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    Main_Tab()
}
