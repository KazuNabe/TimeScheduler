//
//  TimeSchedulerContext.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/16.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import RealmSwift

class TimeSchedulerContext: NSObject {
    var userSetting    : UserSetting?
    var daySceduleSetCollection : [DayScheduleSet]?
    
    // ForView
    var scheduleScreen : ScheduleScreen?
    
    override init() {
        let realm = try! Realm()
        
        if let tempSetting = realm.objects(UserSetting).first {
            userSetting = tempSetting;
        }
        
        daySceduleSetCollection = realm.objects(DayScheduleSet).map{$0}
    }
}
