//
//  ViewController.swift
//  Stopwatch
//
//  Created by David Fang on 2/16/17.
//  Copyright © 2017 David Fang. All rights reserved.
//

import UIKit

class StopwatchViewController: UIViewController {

    @IBOutlet weak var stopwatchLabel: UILabel!
    
    var timer: Timer = Timer()
    var startTime: Date?
    var isRunning: Bool = false
    
    let stopwatch = Stopwatch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    // MARK: -- User Interaction
    
    func updateTime() {
        self.stopwatch.updateTime(self.startTime!)
        
        self.stopwatchLabel.text = self.stopwatch.getTimeString()
    }

    @IBAction func startStopwatch(_ sender: UIButton) {
        if (self.isRunning) {
            self.timer.invalidate()
        }

        self.isRunning = true
        self.startTime = Date.init()
        self.timer = Timer.scheduledTimer(timeInterval: 0.01, target: self,selector: #selector(updateTime), userInfo: nil, repeats: true)
    }

    
    @IBAction func stopStopwatch(_ sender: UIButton) {
        self.isRunning = false
        self.timer.invalidate()
    }
    
}

