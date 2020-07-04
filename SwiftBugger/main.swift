//
//  main.swift
//  SwiftBugger
//
//  Created by Alex Blewitt on 04/07/2020.
//  Copyright © 2020 Me. All rights reserved.
//

import AppKit

var app = NSApplication.shared
app.setActivationPolicy(.regular)

var mainMenu = NSMenu()
mainMenu.autoenablesItems = true
app.mainMenu = mainMenu
var mainItem = NSMenuItem()
mainMenu.addItem(mainItem)
var subMenu = NSMenu()
mainItem.submenu = subMenu
var quit = NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate), keyEquivalent: "q")
subMenu.addItem(quit)
app.activate(ignoringOtherApps: true)
app.run()
