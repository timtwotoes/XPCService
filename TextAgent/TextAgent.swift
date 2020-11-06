//
//  TextAgent.swift
//  TextAgent
//
//  Created by Tim Wolff on 06/11/2020.
//  Copyright © 2020 Tim Wolff. All rights reserved.
//

import Foundation

@objc class TextAgent: NSObject, TextAgentProtocol {
    func upperCaseString(_ aString: String, withReply reply: @escaping (String) -> Void) {
        reply(aString.uppercased())
    }
}
