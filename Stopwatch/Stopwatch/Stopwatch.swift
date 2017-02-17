//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by David Fang on 2/16/17.
//  Copyright © 2017 David Fang. All rights reserved.
//

import Foundation
import UIKit

class Stopwatch {
    
    private var millisecondsPassed: UInt8 = 0
    private var secondsPassed: UInt8 = 0
    private var minutesPassed: UInt8 = 0
    
    /** Calculates the elapsed time between the current time and a 
        specified startTime. Updates the stopwatch's timetracking fields. 
     */
    func updateTime(_ startTime: Date) {
        var elapsedInterval = Date().timeIntervalSince(startTime)
        
        self.minutesPassed = UInt8(elapsedInterval / 60)
        elapsedInterval -= TimeInterval(minutesPassed) * 60
        
        self.secondsPassed = UInt8(elapsedInterval)
        elapsedInterval -= TimeInterval(secondsPassed)
        
        self.millisecondsPassed = UInt8(elapsedInterval * 100)
    }
    
    /** Returns the timestring for this stopwatch. 
     */
    func getTimeString() -> String {
        let timeString = String(format: "%02d:%02d.%02d", Int(self.minutesPassed), Int(secondsPassed), Int(millisecondsPassed))
        
        return timeString
    }
}

