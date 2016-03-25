//
//  TimeSchedulerContext.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/16.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import RealmSwift

let timeSchedulerContext = TimeSchedulerContext()

class TimeSchedulerContext: NSObject {
    var userSetting    : UserSetting?
    var daySceduleSetArray : [DayScheduleSet]?
    
    // ForView
    var circleScheduleScreen : CircleScheduleScreen?
    
    override init() {
        super.init()
        
        let realm = try! Realm()
        
        daySceduleSetArray = realm.objects(DayScheduleSet).map{$0}
        if (daySceduleSetArray?.count <= 0)
        {
            let dayScheduleSet = DayScheduleSet()
            realm.add(dayScheduleSet)
            daySceduleSetArray?.append(dayScheduleSet)
        }
        
        if let tempSetting = realm.objects(UserSetting).first {
            userSetting = tempSetting;
        }
        else
        {
            userSetting = UserSetting.create()
            userSetting?.defaultDayScheduleSetId = daySceduleSetArray?.first?.guid
            try! realm.write {
                realm.add(userSetting!)
            }
        }
    }
}
