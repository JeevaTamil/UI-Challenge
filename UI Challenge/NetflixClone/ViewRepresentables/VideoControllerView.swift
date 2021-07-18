//
//  VideoControllerView.swift
//  UI Challenge
//
//  Created by Azhagusundaram Tamil on 05/06/21.
//

import Foundation
import SwiftUI
import AVKit


struct VideoControllerView: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentaionMode
    
    typealias UIViewControllerType = AVPlayerViewController
    var url: URL?
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        return AVPlayerViewController()
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        guard let url = url else { return }
        let player = AVPlayer(url: url)
        uiViewController.allowsPictureInPicturePlayback = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            if presentaionMode.wrappedValue.isPresented {
                player.play()
            } else {
                player.pause()
            }
        }
        uiViewController.player = player
        uiViewController.videoGravity = .resizeAspectFill
        uiViewController.showsPlaybackControls = false
        
    }
}


struct IGVideoControllerView: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentaionMode
    
    typealias UIViewControllerType = AVPlayerViewController
    @Binding var avplayer: AVQueuePlayer
    @State var videoLooper: AVPlayerLooper? = nil
    var model: IRModel
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        return AVPlayerViewController()
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
       // guard let url = url else { return }
        guard let url = model.videoURL else  { return }
        let asset = AVAsset(url: url)
        let item = AVPlayerItem(asset: asset)
//        let player = AVQueuePlayer(playerItem: item)
        self.videoLooper = AVPlayerLooper(player: avplayer, templateItem: item)
//        let player = avplayer
        uiViewController.allowsPictureInPicturePlayback = true
        uiViewController.player = avplayer
        uiViewController.videoGravity = .resizeAspectFill
        uiViewController.showsPlaybackControls = false
    }
}

