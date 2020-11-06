# XPCService
Template XPC service in xCode 10.1 converted to Swift 4.2. The XPC Service is wrapped in a framework called "Service".

## Requirements
* xCode 10.1
* Swift 4.2

## Description
The project contains four folders. The following sections describe the contents of these folders. It is followed by some notes about build settings. 

### Protocols
Contains protocols shared between the framework and the xpc service.

### Service
Contains all source code related to the framework.

### TextAgent
Contains all source code related to the XPC service.

### ServiceTests
Unit tests that confirms that the XPC service works properly.

### Build Settings
Three settings was changed from the standard template.

* "Always Embed Swift Standard Libraries" was set to YES in the TextAgent target - we need swift in the XPC service now.
* "Install Objective-C Compatibility Header" was set to NO in Service and TextAgent target - Objective-C is no longer used (directly)

### Thoughts
One might be inclined to the remove the "Always Embed Swift Standard Libraries" flag from the XPC target. That would trim the size of the service from ~4 MB to ~59 KB. I wouldn't recommend this, if you should decide to reuse your XPC service in another project. One that might not have the Swift standard libraries installed.  
