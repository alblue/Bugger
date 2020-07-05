This exhibits a bug for applications created by a command-line tool.
--------------------------------------------------------------------

When compiling against older SDKs this example works as expected.
When compiling against 10.15 the focus of the application doesn't
permit clicking on the menu item or the window until focus is switched
away to another application and then back again.

This has been reported as a number of bugs in different places:

* https://bugs.openjdk.java.net/browse/JDK-8233678
* https://bugs.eclipse.org/bugs/show_bug.cgi?id=562535
* http://www.androwish.org/index.html/info/3583d49f8642eac557517123d6f573ae106e6ce9

If there is a simple fix that can be applied to this Objective-C codebase
then equivalent fixes could be upstreamed.

Reproducing the bug
-------------------

```sh
$ git clone https://github.com/alblue/Bugger.git
$ cd Bugger
$ xcodebuild
$ ./build/Release/MinimalBug
```

Attempt to click on the Apple logo on the top left; you can't.
Switch to another app with Cmd+Tab or equivalent.
Switch back to the Bugger app and then you can click on the menu.

