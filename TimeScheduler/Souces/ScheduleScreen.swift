//
//  ScheduleScreen.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/16.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import RealmSwift

class ScheduleScreen: NSObject {
    var currentDaySchedule : DayScheduleSet?
    var currentScheduleScreenType : ScheduleScreenType = ScheduleScreenType.AllTime
    
    var displaySchedules : [Schedule]?
}
