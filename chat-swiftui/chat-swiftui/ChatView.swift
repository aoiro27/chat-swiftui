//
//  ChatView.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack(spacing:0) {
            // Message Area
            ScrollView {
                VStack(spacing:0) {
                    ForEach(0..<20) { _ in
                        HStack {
                            Circle().frame(width: 60, height: 60).foregroundColor(.red)
                            Capsule().frame(height: 60).foregroundColor(.blue)
                        }.padding(.bottom)
                    }
                }.padding(.horizontal)
                    .padding(.top, 72)
            }.background(.cyan)
            
            // Input Area
            HStack {
                Circle().frame(width: 40, height: 40).foregroundColor(.red)
                Circle().frame(width: 40, height: 40).foregroundColor(.red)
                Circle().frame(width: 40, height: 40).foregroundColor(.red)
                Capsule().frame(height: 40).foregroundColor(.blue)
                Circle().frame(width: 40, height: 40).foregroundColor(.red)
            }.background(.white)
                .padding()
        }
    }
}

#Preview {
    ChatView()
}
