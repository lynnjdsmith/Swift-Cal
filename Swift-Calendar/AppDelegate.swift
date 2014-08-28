//
//  AppDelegate.swift
//  Swift-Calendar
//
//  Created by Lynn Smith on 8/28/14.
//  Copyright (c) 2014 Lynn Smith. All rights reserved.
//

import UIKit


extension UIColor {
    class func appGreen() -> UIColor {
        return UIColor(red: 0.255, green: 0.804, blue: 0.470, alpha: 1)
    }
    class func appBlue() -> UIColor {
        return UIColor(red: 0.333, green: 0.784, blue: 1, alpha: 1)
    }
    class func appPurple() -> UIColor {
        return UIColor(red: 0.659, green: 0.271, blue: 0.988, alpha: 1)
    }
    class func btnBkg() -> UIColor {
        return UIColor(red: 233/255, green: 244/255, blue: 217/255, alpha: 1)
    }
    class func btnBorder() -> UIColor {
        return UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1)
    }
    class func appLightGray() -> UIColor {
        return UIColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 1)
    }
    class func btnText() -> UIColor {
        return UIColor.whiteColor() //UIColor(red: 43/255, green: 49/255, blue: 41/255, alpha: 1)
    }
    class func appRed() -> UIColor {
        return UIColor(red: 235/255, green: 68/255, blue: 68/255, alpha: 1)
    }
    class func appLightBlue() -> UIColor {
        //return UIColor(red: 236/255, green: 243/255, blue: 248/255, alpha: 1)
        return UIColor(red: 246/255, green: 251/255, blue: 255/255, alpha: 1)
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication!, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication!) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication!) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication!) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication!) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication!) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

