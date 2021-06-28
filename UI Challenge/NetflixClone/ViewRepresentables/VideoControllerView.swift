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
    var movie: Movie
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        return AVPlayerViewController()
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        guard let url = movie.videoURL else { return }
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

