//
//  main.swift
//  rokit-standby-refresher
//
//  Created by Ryan de Marigny on 8/14/22.
//

import Cocoa


let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate

_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
