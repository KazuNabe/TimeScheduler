//
//  CircleScheduleViewController.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/21.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit

class CircleScheduleViewController: UIViewController {
    var circleScheduleViewModel : CircleScheduelViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        circleScheduleViewModel = CircleScheduelViewModel(context: timeSchedulerContext)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
