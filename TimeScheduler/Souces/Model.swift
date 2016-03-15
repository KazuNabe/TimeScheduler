    //
//  Model.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/15.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit
import RealmSwift
    
class Model: Object {
    dynamic var guid :String = ""
        
    override static func primaryKey() -> String? {
        return "guid"
    }
    
    static func createGuid() -> String {
        return NSUUID().UUIDString
    }
}
