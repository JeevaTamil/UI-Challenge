//
//  NFHomeView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 03/06/21.
//

import SwiftUI

struct NFHomeView: View {
    @State private var selectedMovie: Movie = .moneyHeist
    @StateObject var nfViewModel = NFViewModel()
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 0) {
                    NFTopHomeView(selectedMovie: selectedMovie)
                    NFPreviewsView(selectedMovie: $selectedMovie)
                    NFRectScrollView(title: "Trending Now", movieList: Movie.trending)
                    NFRectScrollView(title: "Popular", movieList: Movie.movies)
                    NFRectScrollView(title: "TV Shows", movieList: Movie.trending)
                }
                .background(Color.black)
            }
            .edgesIgnoringSafeArea(.all)
            NFTopBarView()
        }
        .navigationBarHidden(true)
        .environmentObject(nfViewModel)
    }
}

struct NFHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NFHomeView()
    }
}
