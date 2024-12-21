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
        }
    }
}

#Preview {
    ChatView()
}
