//
//  HotKeyRowView.swift
//  BrevisHotkeysApp
//
//  Created by kamila on 28.03.2025.
//

import SwiftUI

struct HotKeyRowView: View {
    let hotKeyModel: HotkeyModel
    let searchQuery: String
    let font: Font = .body
    let fontSecondary: Font = .headline
    let fontWeight: Font.Weight = .regular
    var charFound: Bool {
        searchQuery.count == 1 && hotKeyModel.character.lowercased() == searchQuery.lowercased()
    }
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if charFound {
                    Text("🔵").font(font)
                }
                Text(hotKeyModel.description).font(font).fontWeight(.semibold)
            }
            Text(hotKeyModel.text.capitalized)
                .foregroundColor(.secondary)
                .font(fontSecondary)
        }.foregroundStyle(charFound ? .blue : .black)
    }
}

struct HotKeyRowView_Previews: PreviewProvider {
    static var previews: some View {
        HotKeyRowView(hotKeyModel: .init(modifiers: [.command], character: "b", text: "Build"), searchQuery: "b")
    }
}
