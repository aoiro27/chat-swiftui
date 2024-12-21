//
//  MessageRow.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import SwiftUI

struct MessageRow: View {
    var body: some View {
        HStack {
            Circle().frame(width: 60, height: 60).foregroundColor(.red)
            Capsule().frame(height: 60).foregroundColor(.blue)
        }.padding(.bottom)
    }
}

#Preview {
    MessageRow()
}
