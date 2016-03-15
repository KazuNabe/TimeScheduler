//
//  TimeSchedulerContext.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/16.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import ReactiveKit
import RealmSwift

class TimeSchedulerContext: NSObject {
    var userSetting    : Observable<UserSetting>?
    var daySceduleSets : ObservableCollection<[DayScheduleSet]>?
    
    // ForView
    var scheduleScreen : Observable<ScheduleScreen>?
    
    override init() {
        let realm = try! Realm()
        
        if let tempSetting = realm.objects(UserSetting).first {
            userSetting = Observable<UserSetting>(tempSetting);
        }
        
    }
}
