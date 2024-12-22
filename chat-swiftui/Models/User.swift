//
//  User.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import Foundation

public struct User : Decodable, Equatable{
    let id: String
    let name: String
    let image: String
    
    var isCurrentUser: Bool{
        self.id == User.currentUser.id
    }
    
    static var currentUser: User {
        User(id:"1", name: "Yuki Usui", image: "P5_futaba")
    }
    
}
