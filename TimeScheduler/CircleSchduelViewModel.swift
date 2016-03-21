//
//  CircleSchduelViewModel.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/21.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import Bond

class CircleSchduelViewModel: NSObject {
    var currentScheduleScreenType : Observable<ScheduleScreenType>?
    
    var displaySchedules : ObservableArray<Schedule>?
    
    override init() {
        super.init()
        
        if AppDelegate.timeSchedulerContext.circleScheduleScreen == nil {
            AppDelegate.timeSchedulerContext.circleScheduleScreen = CircleScheduleScreen(
                scheduleSetArray: &AppDelegate.timeSchedulerContext.daySceduleSetArray!,
                userSetting: AppDelegate.timeSchedulerContext.userSetting!
            )
        }
        
        let circleScheduleScreen = AppDelegate.timeSchedulerContext.circleScheduleScreen;
        
        currentScheduleScreenType = circleScheduleScreen?.currentScheduleScreenType
        displaySchedules = circleScheduleScreen?.displaySchedules
    }
}
