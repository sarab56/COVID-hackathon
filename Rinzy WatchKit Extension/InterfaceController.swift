//
//  InterfaceController.swift
//  Rinzy WatchKit Extension
//
//  Created by Angel Henriquez on 4/7/20.
//  Copyright © 2020 KASE. All rights reserved.
//

import WatchKit
import Foundation
import AVFoundation

class InterfaceController: WKInterfaceController {


    @IBOutlet var audioPlayer: WKInterfaceButton!
    
    class AudioPlayer {
        var audioPlayer = AVAudioPlayer()
        func playingSoundWith(fileName: String) {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: Bundle.main.url(forResource: "drips", withExtension: "mp3")!)
                audioPlayer.prepareToPlay()
                audioPlayer.play()
            } catch {
                print(error)
            }
        }
    }
    
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
