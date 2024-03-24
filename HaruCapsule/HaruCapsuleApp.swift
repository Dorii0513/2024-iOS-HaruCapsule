//
//  HaruCapsuleApp.swift
//  HaruCapsule
//
//  Created by 김예림 on 3/22/24.
//

import SwiftUI

@main
struct HaruCapsuleApp: App {
    @UIApplicationDelegateAdaptor var delegate: MyAppDelegate
    var body: some Scene {
        WindowGroup {
            MainTapView()
        }
    }
}
