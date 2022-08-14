//
//  main.swift
//  rokit-standby-refresher
//
//  Created by Ryan de Marigny on 8/14/22.
//

import Cocoa


// 1
let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate

// 2
_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
