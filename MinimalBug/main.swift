// Run this, click on the Apple logo in the top left
// You cannot get the Apple system menu until you tab
// to another application and back again
import AppKit

var app = NSApplication.shared
app.setActivationPolicy(.regular)

app.activate(ignoringOtherApps: true)
app.run()
