//
//  Service.swift
//  Service
//
//  Created by Tim Wolff on 06/11/2020.
//  Copyright © 2020 Tim Wolff. All rights reserved.
//

import Foundation

public class Service {
    private let connection: NSXPCConnection
    
    public init() {
        connection = NSXPCConnection(serviceName: "dk.codepod.TextAgent")
        connection.remoteObjectInterface = NSXPCInterface(with: TextAgentProtocol.self)
        connection.resume()
    }
    
    public func upperCase(aString: String, reply: @escaping (String) -> Void) {
        let service = connection.remoteObjectProxyWithErrorHandler { (error) in
            print(error)
        } as! TextAgentProtocol
        
        service.upperCaseString(aString, withReply: reply)
    }
}
