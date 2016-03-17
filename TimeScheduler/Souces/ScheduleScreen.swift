//
//  ScheduleScreen.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/16.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import Bond

class ScheduleScreen: NSObject {
    var currentDayScheduleSet : ObservableArray<[DayScheduleSet]>?
    var currentScheduleScreenType : Observable<ScheduleScreenType> = Observable(ScheduleScreenType.AllTime)
    
    var displaySchedules : ObservableArray<[Schedule]>?
    
    private override init() {}
    
    init(scheduleSetArray : [DayScheduleSet], userSetting : UserSetting) {
        currentDayScheduleSet = ObservableArray(
            arrayLiteral: scheduleSetArray.filter {
                $0.guid == userSetting.showingIdOfDayScheduleSet
            }
        )
        
        
    }
}
