//
//  ChatView.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import SwiftUI

struct ChatView: View {
    
    let vm: ChatViewModel = ChatViewModel()
    
    @State private var textFieldText: String = ""
    var body: some View {
        VStack(spacing:0) {
            
            // Message Area
            messageArea
            
            // Navigation Area
                .overlay(navigationArea, alignment: .top)
            
            // Input Area
            inputArea
        }
    }
}

#Preview {
    ChatView()
}

extension ChatView {
    
    private var messageArea: some View {
        // Message Area
        ScrollView {
            VStack(spacing:0) {
                ForEach(vm.messages) { message in
                    MessageRow(message: message)
                }
            }.padding(.horizontal)
                .padding(.top, 72)
        }.background(Color("Background"))
    }
    
    private var inputArea: some View {
        // Input Area
        HStack {
            HStack {
                Image(systemName: "plus")
                Image(systemName: "camera")
                Image(systemName: "photo")
                
            }.font(.title2)
            TextField("Aa", text: $textFieldText)
                .padding()
                .background(Color(uiColor:.secondarySystemBackground))
                .clipShape(Capsule())
                .overlay(Image(systemName: "face.smiling").font(.title2).padding(.trailing).foregroundColor(.gray), alignment: .trailing)
                .onSubmit {
                    sendMessage(text: textFieldText)
                }
            Image(systemName: "mic")
                .font(.title2)
        }.padding(.horizontal)
            .padding(.vertical,8)
        .background(Color(uiColor: .systemBackground))
     
    }
    
    private var navigationArea: some View {
        // Navigation Area
        HStack {
            Image(systemName: "chevron.backward")
                .font(.title2)
            Text("タイトル").font(.title2.bold())
            Spacer()
            HStack(spacing: 16){
                Image(systemName: "text.magnifyingglass")
                Image(systemName: "phone")
                Image(systemName: "line.3.horizontal")
            }.font(.title2)
        }
        .padding()
        .background(Color("Background"))
    }
    
    private func sendMessage(text: String){
        vm.addMessage(text)
    }
    
}
