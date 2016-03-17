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
    var currentDayScheduleSet : Observable<DayScheduleSet>?
    var currentScheduleScreenType : Observable<ScheduleScreenType> = Observable(ScheduleScreenType.AllTime)
    
    var displaySchedules : ObservableArray<[Schedule]>?
    
    private override init() {}
    
    init(scheduleSetArray : [DayScheduleSet], userSetting : UserSetting) {
        currentDayScheduleSet = Observable(
            scheduleSetArray.filter {
                $0.guid == userSetting.showingIdOfDayScheduleSet!
            }.first!
        ) ?? Observable(scheduleSetArray.first!)
        
        currentScheduleScreenType = Observable(userSetting.defaultScheduleScreenType)
        
//        currentDayScheduleSet?.combineLatestWith(currentScheduleScreenType).map {
//            scheduleSet, type in
//            switch type
//            {
//            case .AllTime:
//                return scheduleSet.schedules
//                
//            case .AM:
//                return scheduleSet.schedules.filter {
//                    return ($0.eventStartTime.
//                }
//            }
//        }
    }
}
