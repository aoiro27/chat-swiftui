//
//  ChatView.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import SwiftUI

struct ChatView: View {
    
    @ObservedObject
    var vm: ChatViewModel = ChatViewModel()
    
    let chat: Chat
    
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
    
    @FocusState
    private var textFieldFocused: Bool
    
    @Environment(\.dismiss) private var dismiss
    
}


#Preview {
    let chat = ChatViewModel().chatData[0]
    ChatView(chat: chat)
}


extension ChatView {
    
    private var messageArea: some View {
        
        ScrollViewReader { proxy in
            // Message Area
            ScrollView {
                VStack(spacing:0) {
                    ForEach(chat.messages) { message in
                        MessageRow(message: message)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 72)
            }
            .background(Color("Background"))
            .onTapGesture {
                print("onTapGesture")
                textFieldFocused = false
            }
            .onAppear{
                scrollToBottom(proxy: proxy)
            }
            .onChange(of: vm.messages) {
                scrollToBottom(proxy: proxy)
            }
        }
        

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
                    sendMessage()
                }
                .focused($textFieldFocused)
            Image(systemName: "mic")
                .font(.title2)
        }.padding(.horizontal)
            .padding(.vertical,8)
        .background(Color(uiColor: .systemBackground))
     
    }
    
    private var navigationArea: some View {
        // Navigation Area
        HStack {
            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.backward")
                    .font(.title2)
                    .foregroundColor(.primary
                    )
            }

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
    
    private func sendMessage(){
        guard !textFieldText.isEmpty else {
            return
        }
        vm.addMessage(text: textFieldText)
        textFieldText = ""
    }
    
    private func scrollToBottom(proxy: ScrollViewProxy){
        if let lastMessage = vm.messages.last {
            print(lastMessage)
            proxy.scrollTo(lastMessage.id, anchor: .bottom)
        }
        
    }
    
}
