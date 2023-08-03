//
//  MusicModel.swift
//  TuringSchool
//
//  Created by Danielly Santos Lopes da Silva on 03/08/23.
//

import Foundation
import AVFoundation
import MediaPlayer
import SwiftUI

var player: AVAudioPlayer!

func music(music: String) {
    let url = Bundle.main.url(forResource: music, withExtension: "wav")
    
    
    guard url != nil else {
        return
    }
    do {
        player = try AVAudioPlayer(contentsOf: url!)
        player.volume = 0.1
        player.numberOfLoops = -1
        player?.play()
    } catch {
        print("error")
    }
}
