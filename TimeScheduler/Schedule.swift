//
//  Schedule.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/10.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import RealmSwift

class Schedule: Object {
    dynamic var guid : String = ""
    
    dynamic var eventTitle : String = ""
    dynamic var eventDetail : String = ""
    
    dynamic var eventStartTime : NSDate?
    dynamic var eventEndTime : NSDate?
    
    override static func primaryKey() -> String {
        return "guid";
    }
    
    private static func createGuid() -> String {
        return NSUUID().UUIDString
    }
    
    static func create() -> Schedule {
        let schedule = Schedule()
        
        schedule.guid = createGuid()
        
        return schedule;
    }
}
