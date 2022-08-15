//
//  AppDelegate.swift
//  rokit-standby-refresher
//
//  Created by Ryan de Marigny on 8/14/22.
//

import Cocoa
import AppKit


class AppDelegate: NSObject, NSApplicationDelegate {

    private var window: NSWindow!
    private var statusItem: NSStatusItem!

    func applicationDidFinishLaunching(_ aNotification: Notification) {

        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

        if let button = statusItem.button {
            button.image = NSImage(systemSymbolName: "hifispeaker.fill", accessibilityDescription: "hifi speaker")
        }
        Timer.scheduledTimer(timeInterval: 600.0, target: self, selector: #selector(self.playSound), userInfo: nil, repeats: true)

        setupMenus()
    }
    
    func setupMenus() {
        let menu = NSMenu()

        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: "Refresh", action: #selector(self.playSound(_:)), keyEquivalent: "r"))
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))

        statusItem.menu = menu
    }
    
    @objc func playSound(_ sender: NSMenuItem) {
        NSSound(named: "low_sine.wav")?.play()
    }
}

