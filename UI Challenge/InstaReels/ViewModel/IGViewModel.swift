//
//  IGViewModel.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 02/07/21.
//

import Foundation
import AVFoundation

class IGViweModel: ObservableObject {
    @Published var playerList: [AVQueuePlayer] = []
    
    var videoLooper: AVPlayerLooper? = nil
    
    init() {
        for model in IRModel.mockData {
            guard let url = model.videoURL else  { return }
            let asset = AVAsset(url: url)
            let item = AVPlayerItem(asset: asset)
            let player = AVQueuePlayer(playerItem: item)
            videoLooper = AVPlayerLooper(player: player, templateItem: item)
            playerList.append(player)
        }
    }
}
