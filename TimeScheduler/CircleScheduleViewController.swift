//
//  CircleScheduleViewController.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/21.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit

class CircleScheduleViewController: UIViewController {
    var circleSchduleViewModel : CircleSchduelViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        circleSchduleViewModel = CircleSchduelViewModel(context: AppDelegate.timeSchedulerContext)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
