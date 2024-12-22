//
//  ChatViewModel.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import Foundation

class ChatViewModel {
    
    var chatData: [Chat] = []
    var messages: [Message] = []
    
    init() {
        chatData = fetchChatData()
        messages = chatData.first?.messages ?? []
        print(messages)
    }
    
    private func fetchChatData() -> [Chat] {
        let fileName = "chatData.json"
        let data: Data
        
        guard let filePath = Bundle.main.url(forResource: fileName, withExtension: nil) else {
            fatalError("not found")
        }
        
        do {
            data = try Data(contentsOf: filePath)
            return try JSONDecoder().decode([Chat].self, from: data)
        }catch{
            fatalError("not found")
        }
        
    }
}
