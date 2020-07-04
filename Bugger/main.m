//
//  main.m
//  Bugger
//
//  Created by Alex Blewitt on 04/07/2020.
//  Copyright © 2020 Me. All rights reserved.
//
//
// Taken from https://bugs.eclipse.org/bugs/show_bug.cgi?id=562535#c0

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject<NSApplicationDelegate>
{
}
@end

@implementation AppDelegate : NSObject
-(BOOL) applicationShouldTerminateAfterLastWindowClosed:(NSApplication*)app
{
    return YES;
}
@end

int main ()
{
    NSApplication* app = [NSApplication sharedApplication];
    AppDelegate* appDelegate = [[AppDelegate alloc] init];
    [app setDelegate:appDelegate];
    [app setActivationPolicy:NSApplicationActivationPolicyRegular];

	NSMenuItem* item = NSMenuItem.new;
	NSApp.mainMenu = NSMenu.new;
	item.submenu = NSMenu.new;
	[app.mainMenu addItem: item];
	[item.submenu addItem: [[NSMenuItem alloc] initWithTitle:@"Quit" action:@selector(terminate:) keyEquivalent:@"q"]];
	
    NSRect windowRect = NSMakeRect(0, 0, 200, 200);
    id window = [[NSWindow alloc]
        initWithContentRect: windowRect
        styleMask: NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskResizable | NSWindowStyleMaskMiniaturizable
        backing: NSBackingStoreBuffered
        defer:NO
        ];
    [window setTitle:[[NSProcessInfo processInfo] processName]];
    [window makeKeyAndOrderFront:nil];
	[[NSApplication sharedApplication] activateIgnoringOtherApps:true];
    [app run];
    return 0;
}
