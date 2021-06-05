//
//  NFTopHomeView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 05/06/21.
//

import SwiftUI


struct NFTopHomeView: View {
    @Environment(\.deviceSize) var deviceSize
    var selectedMovie: Movie
  
    
    var body: some View {
        VStack {
            VStack {
                ZStack(alignment: .top) {
                    VideoPlayerView(movie: selectedMovie)
                    LinearGradient(gradient: Gradient(colors: [Color.clear, Color.clear, Color.clear,Color.black.opacity(0.5), Color.black.opacity(0.8),  Color.black]), startPoint: .top, endPoint: .bottom)
                    NFQuickActionView()
                }
                Spacer()
            }
            .frame(width: deviceSize.width, height: deviceSize.height / 1.6)
            Spacer()
        }
        
    }
}

struct NFTopHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NFTopHomeView(selectedMovie: .moneyHeist)
    }
}
