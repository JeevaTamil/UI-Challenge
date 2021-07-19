//
//  ABView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 19/07/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct ABView: View {
    var body: some View {
        TabView {
           ABExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            Text("Hello, World!")
                .tabItem {
                    Label("Wishlist", systemImage: "heart")
                }
            Text("Hello, World!")
                .tabItem {
                    Label("Trips", image: "logo")
                        .frame(width: 24, height: 24)
                }
            Text("Hello, World!")
                .tabItem {
                    Label("Inbox", systemImage: "bubble.left")
                }
            Text("Hello, World!")
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
//        .safeAreaInset(edge: <#T##HorizontalEdge#>, content: <#T##() -> View#>)
        
    }
}

@available(iOS 15.0, *)
struct ABView_Previews: PreviewProvider {
    static var previews: some View {
        ABView()
    }
}
