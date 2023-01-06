//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Eduardo Ceron on 09/09/21.
//

import Foundation
import AVKit

// esto es para que el video se inicie automaticamente

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
