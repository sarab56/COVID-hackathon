//
//  TimerViewController.swift
//  iCovid WatchKit Extension
//
//  Created by Kyle Ip on 4/7/20.
//  Copyright © 2020 Emmanuel Salcedo. All rights reserved.
//

import WatchKit
import Foundation


class TimerViewController: WKInterfaceController {

    @IBOutlet weak var timerLabel: WKInterfaceLabel!
    var seconds = 30
//    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var isTimerRunning = false
    
    @IBAction func startButtonPressed(_ sender: WKInterfaceButton) {
        NSLog("hi")
    }
    
    @IBOutlet weak var TimerOutlet: Timer!
    //    func runTimer() {
//         timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
//    }
    
//    override func awake(withContext context: Any?) {
//        super.awake(withContext: context)
//
//        // Configure interface objects here.
//    }
//
//    override func willActivate() {
//        // This method is called when watch view controller is about to be visible to user
//        super.willActivate()
//    }
//
//    override func didDeactivate() {
//        // This method is called when watch view controller is no longer visible
//        super.didDeactivate()
//    }

}
