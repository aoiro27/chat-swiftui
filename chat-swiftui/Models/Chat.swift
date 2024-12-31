//
//  Chat.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import Foundation

public struct Chat :Decodable, Identifiable{
    public let id : String
    let messages: [Message]
    var latestMessage: String {
        guard let message = messages.last else { return "" }
        return message.text
    }
}
