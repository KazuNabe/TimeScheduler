//
//  ScheduleScreen.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/16.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import Bond
import SwiftDate
import RealmSwift

class ScheduleScreen: NSObject {
    var currentDayScheduleSet : Observable<DayScheduleSet>?
    let currentScheduleScreenType : Observable<ScheduleScreenType> = Observable(ScheduleScreenType.AllTime)
    
    let displaySchedules : ObservableArray<Schedule> = ObservableArray<Schedule>()
    
    private override init() {}
    
    init(inout scheduleSetArray : [DayScheduleSet], userSetting : UserSetting) {
        super.init()
        
        currentDayScheduleSet = Observable(
            scheduleSetArray.filter {
                $0.guid == userSetting.showingIdOfDayScheduleSet!
            }.first!
        ) ?? Observable(scheduleSetArray.first!)
        
        currentScheduleScreenType.value = userSetting.defaultScheduleScreenType
        
        currentDayScheduleSet?.combineLatestWith(currentScheduleScreenType).observeNew {
            [unowned self] (scheduleSet, screenType) -> Void in
            
            switch screenType
            {
            case .AllTime:
                self.displaySchedules.array = scheduleSet.schedules.map{$0}
                
            case .AM:
                self.displaySchedules.array = scheduleSet.schedules.filter {
                    $0.eventStartTime?.hour <= 12
                }
                
            case .PM:
                self.displaySchedules.array = scheduleSet.schedules.filter {
                    12 <= $0.eventStartTime?.hour || $0.eventEndTime?.hour <= 12
                }
                
            default:
                break
            }
        }
    }
}
