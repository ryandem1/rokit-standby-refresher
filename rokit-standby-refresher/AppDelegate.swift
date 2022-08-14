//
//  AppDelegate.swift
//  rokit-standby-refresher
//
//  Created by Ryan de Marigny on 8/14/22.
//

import Cocoa


class AppDelegate: NSObject, NSApplicationDelegate {

    private var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 270),
            styleMask: [.miniaturizable, .closable, .resizable, .titled],
            backing: .buffered, defer: false)
        window.center()
        window.title = "No Storyboard Window"
        window.makeKeyAndOrderFront(nil)
    }
}

