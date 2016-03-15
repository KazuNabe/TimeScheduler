//
//  DayScheduleSet.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/15.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import RealmSwift

class DayScheduleSet: Model {
    let schedules = List<Schedule>()
    
    static func create() -> DayScheduleSet {
        let scheduleSet = DayScheduleSet()
        
        scheduleSet.guid = createGuid()
        
        return scheduleSet;
    }
}
