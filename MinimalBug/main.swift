// Run this, click on the Apple logo in the top left
// You cannot get the Apple system menu until you tab
// to another application and back again
import AppKit

@objc
class Delegate: NSObject, NSApplicationDelegate {
	func applicationDidFinishLaunching(_ notification: Notification) {
		app.activate(ignoringOtherApps: true)
        app.setActivationPolicy(.regular)
	}
}

var app = NSApplication.shared
let delegate = Delegate()
app.delegate = delegate
app.run()
