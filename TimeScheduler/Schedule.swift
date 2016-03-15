//
//  Schedule.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/10.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import RealmSwift

class Schedule: Model {
    dynamic var eventTitle : String = ""
    dynamic var eventDetail : String = ""
    
    dynamic var eventStartTime : NSDate?
    dynamic var eventEndTime : NSDate?
    
    static func create() -> Schedule {
        let schedule = Schedule()
        
        schedule.guid = createGuid()
        
        return schedule
    }
}
