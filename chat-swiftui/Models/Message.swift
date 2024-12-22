//
//  Message.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import Foundation

struct Message: Decodable, Identifiable {
    let id : String
    let text: String
    let user: User
    let date: String
    let readed: Bool
}
