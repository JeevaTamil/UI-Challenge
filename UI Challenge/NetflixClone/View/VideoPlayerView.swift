//
//  VideoPlayerView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 05/06/21.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    @Environment(\.deviceSize) var deviceSize
    @EnvironmentObject var nfViewModel: NFViewModel
    var movie: Movie
    
    var body: some View {
        ZStack {
            VideoControllerView(url: movie.videoURL)
            if nfViewModel.isPosterDisplay {
                Image(movie.imgName)
                .resizable()
                .transition(.opacity)
                .animation(.easeIn)
            }
        }
        .ignoresSafeArea(edges: .top)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                nfViewModel.isPosterDisplay.toggle()
            }
        }
        
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(movie: .friends)
            .environmentObject(NFViewModel())
    }
    
}
