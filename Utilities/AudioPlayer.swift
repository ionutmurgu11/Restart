//
//  AudioPlayer.swift
//  Restart (iOS)
//
//  Created by Ionut Murgu on 20.01.2022.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSOund(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch{
            print("Cannot play sound file")
        }
    }
}
