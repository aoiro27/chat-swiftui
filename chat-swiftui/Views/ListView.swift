//
//  ListView.swift
//  chat-swiftui
//
//  Created by Yuki Usui on 2024/12/22.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack {
            // Header
            header
            
            // List
            list
        }.padding(.horizontal)
    }
}

#Preview {
    ListView()
}

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
            ForEach(0..<100) { _ in
                HStack{
                    Image("P5_futaba")
                        .resizable()
                        .frame(width: 48, height: 48)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text("タイトル")
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
    }
}
