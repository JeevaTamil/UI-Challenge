//
//  IGReelsView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 02/07/21.
//

import SwiftUI
import AVKit

struct IGReelsView: View {
    @StateObject var viewModel = IGViweModel()
    @Environment(\.deviceSize) var deviceSize
    
    var body: some View {
        
        TabView {
            ForEach(0..<IRModel.mockData.count) { i in
                IGVideoControllerView(avplayer: $viewModel.playerList[i], model: IRModel.mockData[i])
                    .frame(width: deviceSize.width, height: deviceSize.height)
                    .onAppear {                        
                        viewModel.playerList[i].play()
                    }
                    .onDisappear {
                        viewModel.playerList[i].pause()
                    }
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
        
    }
    
    func createAVPlayer(model: IRModel) -> AVPlayer? {
        guard let url = model.videoURL else { return nil }
        let player =  AVPlayer(url: url)
        return player
    }
    
    
}

struct IGReelsView_Previews: PreviewProvider {
    static var previews: some View {
        IGReelsView()
        //        VPageView()
    }
}
