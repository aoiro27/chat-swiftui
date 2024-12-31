//
//  ListRow.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import SwiftUI

struct ListRow: View {
    
    var message: String

    var body: some View {
        HStack{
            Image("P5_futaba")
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text("タイトル").foregroundColor(.primary)
                Text(message)
                    .font(.footnote)
                    .foregroundColor(Color(UIColor.secondaryLabel))
            }
            Spacer()
            Text("12/31")
                .font(.caption)
                .foregroundColor(Color(UIColor.secondaryLabel))
        }
    }
}

#Preview {
    ListRow(message: "Hello World")
}
