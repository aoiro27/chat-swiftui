//
//  ListRow.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import SwiftUI

struct ListRow: View {
    var body: some View {
        HStack{
            Image("P5_futaba")
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text("タイトル").foregroundColor(.primary)
                Text("最新のメッセージ")
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
    ListRow()
}
