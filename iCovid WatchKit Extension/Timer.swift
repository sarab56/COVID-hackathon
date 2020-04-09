//
//  Timer.swift
//  iCovid WatchKit Extension
//
//  Created by Kyle Ip on 4/7/20.
//  Copyright © 2020 Emmanuel Salcedo. All rights reserved.
//

import WatchKit

class Timer: WKInterfaceTimer {
    // Hook up a reference to the timer.
    @IBOutlet var workoutTimer: WKInterfaceTimer!
    @IBOutlet var startButton: WKInterfaceButton!


    // Keep track of the time the workout started.
    var workoutStartTime: Date

    func startWorkout() {
        // To count up use 0.0 or less, otherwise the timer counts down.
        workoutTimer.setDate(Date(timeIntervalSinceNow: 30.0))
        workoutTimer.start()
        self.workoutStartTime = Date()
    }

    func stopWorkout() {
        workoutTimer.stop()
    }

    func workoutSecondsElapsed() -> TimeInterval? {
        // If the timer hasn't been started then return nil
//        guard let startTime = self.workoutStartTime else {
//            return nil
//        }
        // Time intervals from past dates are negative, so
        // multiply by -1 to get the elapsed time.
        return -1.0 * self.workoutStartTime.timeIntervalSinceNow
    }
}
