//
//  ListView.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import SwiftUI

struct ListView: View {
    
    
    @ObservedObject var vm: ChatViewModel = ChatViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                header
                
                // List
                list
            }.padding(.horizontal)
        }
    }
}

#Preview {
    ListView()
}

extension ListView {
    
    private var header: some View {
        HStack {
            Text("トーク")
                .font(.title2.bold())
            Spacer()
            HStack {
                Image(systemName: "text.badge.checkmark")
                Image(systemName: "square")
                Image(systemName: "ellipsis.bubble")
            }.font(.title2)
        }
    }
    
    private var list: some View {
        
        ScrollView {
            VStack {
                ForEach(vm.chatData) { chat in
                    NavigationLink {
                        ChatView(chat: chat)
                            .toolbar(.hidden)
                    } label: {
                        ListRow()
                    }
                }
            }
        }
    }
}
