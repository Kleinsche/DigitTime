//
//  DigitTimeView.swift
//  Time
//
//  Created by Kleinsche on 2017/8/31.
//  Copyright © 2017年 Kleinsche. All rights reserved.
//

import UIKit

class DigitTimeView: UIView {
    
    var hour1: UIImageView!
    var hour2: UIImageView!
    var clock: UIImageView!
    var minute1: UIImageView!
    var minute2: UIImageView!
    
    var timer: Timer!
    var isClockHidden: Bool = true
    
    override func draw(_ rect: CGRect) {
        
        let xib = UINib(nibName: "DigitTime", bundle: Bundle.main)
        let timeView = xib.instantiate(withOwner: nil, options: nil).first as! UIView
        hour1 = timeView.viewWithTag(1) as! UIImageView
        hour2 = timeView.viewWithTag(2) as! UIImageView
        clock = timeView.viewWithTag(3) as! UIImageView
        minute1 = timeView.viewWithTag(4) as! UIImageView
        minute2 = timeView.viewWithTag(5) as! UIImageView
        timeView.frame = self.bounds
        self.addSubview(timeView)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }

    @objc func updateTime() {
        let h1 = TimeHelper.getTime(.hour1)
        let h2 = TimeHelper.getTime(.hour2)
        let m1 = TimeHelper.getTime(.minute1)
        let m2 = TimeHelper.getTime(.minute2)
        hour1.image = UIImage(named: "time\(h1)")
        hour2.image = UIImage(named: "time\(h2)")
        minute1.image = UIImage(named: "time\(m1)")
        minute2.image = UIImage(named: "time\(m2)")
        
        if isClockHidden {
            isClockHidden = false
            clock.alpha = 0.1
        } else {
            isClockHidden = true
            clock.alpha = 1
        }
    }
    
}

