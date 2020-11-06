//
//  main.swift
//  TextAgent
//
//  Created by Tim Wolff on 06/11/2020.
//  Copyright © 2020 Tim Wolff. All rights reserved.
//

import Foundation

@objc class ServiceDelegate: NSObject, NSXPCListenerDelegate {
    func listener(_ listener: NSXPCListener, shouldAcceptNewConnection newConnection: NSXPCConnection) -> Bool {
        newConnection.exportedInterface = NSXPCInterface(with: TextAgentProtocol.self)
        newConnection.exportedObject = TextAgent()
        newConnection.resume()
        return true
    }
}

let delegate = ServiceDelegate()

let listener = NSXPCListener.service()
listener.delegate = delegate
listener.resume()
