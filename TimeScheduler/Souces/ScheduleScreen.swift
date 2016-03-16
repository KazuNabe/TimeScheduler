//
//  ScheduleScreen.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/16.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import RealmSwift
import ReactiveKit

class ScheduleScreen: NSObject {
    var currentDayScheduleSet : ObservableCollection<[DayScheduleSet]>?
    var currentScheduleScreenType : Observable<ScheduleScreenType> = Observable(ScheduleScreenType.AllTime)
    
    var displaySchedules : ObservableCollection<[Schedule]>?
    
    private override init() {}
    
    init(scheduleSetArray : [DayScheduleSet], userSetting : UserSetting) {
        currentDayScheduleSet = ObservableCollection(
            scheduleSetArray.filter{ $0.guid == userSetting.showingIdOfDayScheduleSet })
        
        currentScheduleScreenType.next(userSetting.defaultScheduleScreenType)
        
        
    }
}
