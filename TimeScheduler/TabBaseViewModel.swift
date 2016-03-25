//
//  TabBaseViewModel.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/25.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import Bond

class TabBaseViewModel: NSObject {
    var currentScheduleScreenType : Observable<ScheduleScreenType>?
    
    private override init() {}
    
    init(context : TimeSchedulerContext) {
        
    }
}
