//
//  TabBaseViewController.swift
//  TimeScheduler
//
//  Created by Kazuya Watanabe on 2016/03/17.
//  Copyright © 2016年 jp.studio.edamame. All rights reserved.
//

import UIKit

class TabBaseViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var menuTabBar: UITabBar!
    @IBOutlet weak var allDayTabBarItem: UITabBarItem!
    @IBOutlet weak var amTabBarItem: UITabBarItem!
    @IBOutlet weak var pmTabBarItem: UITabBarItem!
    @IBOutlet weak var settingsTabBarItem: UITabBarItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
