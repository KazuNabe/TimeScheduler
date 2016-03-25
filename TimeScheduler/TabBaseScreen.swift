//
//  TabBaseScreen.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/25.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import Bond

class TabBaseScreen: NSObject {
    let currentScheduleScreenType : Observable<ScheduleScreenType> = Observable(ScheduleScreenType.AllTime)
    var circleScheduleScreen : CircleScheduleScreen?
    
    override init() {
        super.init()
    }
}
