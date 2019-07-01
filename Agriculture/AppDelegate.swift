//
//  AppDelegate.swift
//  Agriculture
//
//  Created by 藤森大輝 on 2019/06/28.
//  Copyright © 2019 藤森大輝. All rights reserved.
//

import UIKit
import NCMB

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    //********** APIキーの設定 **********
    let applicationkey = "1e838113a0d931c87f10d99cf0e9ea510010563dcb8e4fa4dd1798fadce3528b"
    let clientkey      = "7b44422c729efd0c8ff99b5686dc258bb88b7613342f85a1f1822f9a62fb3bc0"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //********** SDKの初期化 **********
        NCMB.setApplicationKey(applicationkey, clientKey: clientkey)
        //▼▼▼起動時に処理される▼▼▼
        // クラスのNCMBObjectを作成
        let obj3 = NCMBObject(className: "AgriData")
        // objectIdプロパティを設定
        obj3?.objectId = "18RIfEdEkdPw9tKc"
        // 設定されたobjectIdを元にデータストアからデータを取得
        obj3?.fetchInBackground({ (error) in
            if error != nil {
                // 取得に失敗した場合の処理
            }else{
                // 取得に成功した場合の処理
                // (例)取得したデータの出力
                print(obj3! as NCMBObject)
            }
        })
        //▲▲▲起動時に処理される▲▲▲
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

