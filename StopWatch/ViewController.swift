//
//  ViewController.swift
//  StopWatch
//
//  Created by Nauf on 15/02/16.
//  Copyright © 2016 Nauf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var timerLabel: UILabel!
    var timer = NSTimer()
    
    var timeCounter = 0
    var isStart = true // so that multiple timers wont run
    
    func increaseTimer(){
    
        timeCounter++
        timerLabel.text = String(timeCounter)
        
    }
    
    @IBAction func startButton(sender: AnyObject) {
        
        if isStart{
        
        timer =  NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
        }
        
        isStart = false
        
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        
        
        timer.invalidate()//Stopping it from repeating
        isStart = true

        
    }
    @IBAction func resetButton(sender: AnyObject) {
        
        timer.invalidate()
        
        timeCounter = 0
        timerLabel.text = "0"
        isStart = true

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

