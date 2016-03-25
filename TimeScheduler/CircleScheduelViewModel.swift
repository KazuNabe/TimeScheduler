//
//  CircleScheduelViewModel.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/21.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import Bond

class CircleScheduelViewModel: NSObject {
    let disposeBag : DisposeBag = DisposeBag()
    
    var currentScheduleScreenType : Observable<ScheduleScreenType>?
    var displaySchedules : ObservableArray<Schedule>?
    
    private override init() {}
    
    init(context : TimeSchedulerContext) {
        super.init()
        
        if context.circleScheduleScreen == nil {
            context.circleScheduleScreen = CircleScheduleScreen(
                scheduleSetArray: &context.daySceduleSetArray!,
                userSetting: context.userSetting!
            )
        }
        
        let circleScheduleScreen = context.circleScheduleScreen;
        
        currentScheduleScreenType = circleScheduleScreen?.currentScheduleScreenType
        displaySchedules = circleScheduleScreen?.displaySchedules
    }
}
