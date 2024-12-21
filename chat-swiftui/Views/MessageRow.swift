//
//  MessageRow.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import SwiftUI

struct MessageRow: View {
    
    private var formattedDateString: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: Date())
    }
    
    var body: some View {
        HStack(alignment: .top) {
            userThumb
            messageText
            Spacer()
            messageState
        }.padding(.bottom)
    }
}

extension MessageRow {
    private var userThumb : some View {
        Image(systemName: "person.circle")
            .resizable()
            .frame(width: 40, height: 40)
    }
    
    private var messageText : some View {
        Text("Hello World")
             .padding()
             .background(Color.white)
             .cornerRadius(30)
    }
    
    private var messageState : some View {
        VStack(alignment: .trailing) {
            Spacer()
            Text("既読")
            Text(formattedDateString)
        }.foregroundColor(.secondary)
            .font(.footnote)
    }
    
}

#Preview {
    MessageRow().background(.red)
}
