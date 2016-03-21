//
//  UserSetting.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/15.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit

enum ScheduleScreenType : String {
    case UNKNOWN = "Unknown"
    case AM = "AM"
    case PM = "PM"
    case ByTimePriod = "ByTimePriod"
    case AllTime = "AllTime"
}

class UserSetting: Model {
    dynamic var defaultDayScheduleSetId : String?
    private dynamic var defaultScheduleScreenTypeOfLocal = ScheduleScreenType.AllTime.rawValue
    var defaultScheduleScreenType : ScheduleScreenType {
        get {
            return ScheduleScreenType(rawValue: self.defaultScheduleScreenTypeOfLocal) ?? .AllTime;
        }
        
        set {
            self.defaultScheduleScreenTypeOfLocal = newValue.rawValue
        }
    }
    
    static func create() -> UserSetting {
        let userSetting = UserSetting()
        
        userSetting.guid = createGuid()
        
        return userSetting;
    }
}
