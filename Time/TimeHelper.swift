//
//  TimeHelper.swift
//  Time
//
//  Created by Kleinsche on 2017/9/1.
//  Copyright © 2017年 Kleinsche. All rights reserved.
//

import UIKit

enum timeType {
    case hour1
    case hour2
    case minute1
    case minute2
}

class TimeHelper: NSObject {

//    static let shared: TimeHelper = TimeHelper()
    
}

extension TimeHelper {
    ///获取时间位置数
    class func getTime(_ type: timeType) -> Int{
        let nowDate = Date()
        let formatter = DateFormatter()
        var num: Int = 8
        
        switch type {
        case .hour1:
            formatter.dateFormat = "HH"
            let string = formatter.string(from: nowDate)
            num = Int(string)! / 10
        case .hour2:
            formatter.dateFormat = "HH"
            let string = formatter.string(from: nowDate)
            num = Int(string)! % 10
        case .minute1:
            formatter.dateFormat = "mm"
            let string = formatter.string(from: nowDate)
            num = Int(string)! / 10
        case .minute2:
            formatter.dateFormat = "mm"
            let string = formatter.string(from: nowDate)
            num = Int(string)! % 10
        }
        
        return num
    }
    
}
