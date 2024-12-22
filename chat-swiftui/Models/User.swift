//
//  User.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import Foundation

public struct User : Decodable{
    let id: String
    let name: String
    let image: String
    
    var isCurrentUser: Bool{
        self.id == "1"
    }
    
}
