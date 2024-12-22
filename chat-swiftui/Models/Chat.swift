//
//  Chat.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import Foundation

public struct Chat :Decodable{
    let id : String
    let messages: [Message]
}
