//
//  AppDelegate.swift
//  rokit-standby-refresher
//
//  Created by Ryan de Marigny on 8/14/22.
//

import Cocoa


class AppDelegate: NSObject, NSApplicationDelegate {

    private var window: NSWindow!
    private var statusItem: NSStatusItem!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 270),
            styleMask: [.miniaturizable, .closable, .resizable, .titled],
            backing: .buffered, defer: false
        )
        window.center()
        window.title = "No Storyboard Window"
        window.makeKeyAndOrderFront(nil)
        
        // 2
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        // 3
        if let button = statusItem.button {
            button.image = NSImage(systemSymbolName: "hifispeaker.fill", accessibilityDescription: "1")
        }
    }
}

