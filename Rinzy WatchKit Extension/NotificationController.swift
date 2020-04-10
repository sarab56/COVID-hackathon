//
//  NotificationController.swift
//  Rinzy WatchKit Extension
//
//  Created by Angel Henriquez on 4/7/20.
//  Copyright © 2020 KASE. All rights reserved.
//

import WatchKit
import Foundation
import UserNotifications
import AVFoundation

class NotificationController: WKUserNotificationInterfaceController {
    
    class AudioPlayer {
        
 
          var audioPlayer = AVAudioPlayer()
          func playingSoundWith(fileName: String) {
              do {
                  audioPlayer = try AVAudioPlayer(contentsOf: Bundle.main.url(forResource: "Wash Your Hands", withExtension: "mp4")!)
                  audioPlayer.prepareToPlay()
                  audioPlayer.play()
              } catch {
                  print(error)
              }
        }
    }   
}
