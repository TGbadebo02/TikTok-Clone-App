//
//  customVideoPlayer.swift
//  TikTokClone
//
//  Created by TJ Gbadebo on 07/03/2025.
//

import SwiftUI
import AVKit

struct customVideoPlayer: UIViewControllerRepresentable {
    var player : AVPlayer
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = false
        controller.exitsFullScreenWhenPlaybackEnds = true
        controller.allowsPictureInPicturePlayback = true
        controller.videoGravity = .resizeAspectFill
        return controller
    }
    
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
  
    }
    
}
