//
//  ChatViewModel.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import Foundation

class ChatViewModel : ObservableObject{
    
    var chatData: [Chat] = []
    @Published var messages: [Message] = []
    
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
    
    public func addMessage(text: String){
        let newMessage = Message(
            id: UUID().uuidString,
            text: text,
            user: User.currentUser,
            date: Date().description,
            readed: false)
        messages.append(newMessage)
    }
    
}
