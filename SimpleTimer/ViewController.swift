//
//  ViewController.swift
//  SimpleTimer
//
//  Created by D7702_10 on 2018. 4. 9..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timeSwitch: UISwitch!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     timeSwitch.setOn(false, animated: true)
        
        //myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss EEE"
        timeLabel.text = formatter.string(from: date)
    }
    
    
    @IBAction func timerStart(_ sender: Any) {
        if timeSwitch.isOn == true {
            //myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
            //closure 사용
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
                self.updateTime()
                
            })
            
            
            
        } else {
            myTimer.invalidate()
        }
        
        
        
    }

    
}

