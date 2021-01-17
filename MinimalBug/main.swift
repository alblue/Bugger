// Run this, click on the Apple logo in the top left
// You cannot get the Apple system menu until you tab
// to another application and back again
import AppKit

@objc
class Delegate: NSObject, NSApplicationDelegate {
	func applicationDidFinishLaunching(_ notification: Notification) {
		app.activate(ignoringOtherApps: true)
	}
}

var app = NSApplication.shared
app.setActivationPolicy(.regular)
let delegate = Delegate()
app.delegate = delegate
app.run()
