//
//  HotKeySectionView.swift
//  BrevisHotkeysApp
//
//  Created by kamila on 28.03.2025.
//

import SwiftUI

struct HotKeySectionView: View {
    let hotKeyCategoryName: String
    let hotKeyModels: [HotkeyModel]
    let searchQuery: String
    let sectionHeaderFont: Font = Font.body
    let fontWeight: Font.Weight = .semibold
    let sectionHeader: Color = .red
    var filteredHotKeyModels: [HotkeyModel] {
        if searchQuery.isEmpty || searchQuery.count <= 1 {
            return hotKeyModels
        } else {
            return hotKeyModels.filter { a in
                a.text.lowercased().contains(searchQuery.lowercased())
            }
        }
    }
    var body: some View {
        if !filteredHotKeyModels.isEmpty {
            Section(content: {
                ForEach(filteredHotKeyModels) { hotKeyModel in
                    HotKeyRowView(hotKeyModel: hotKeyModel, searchQuery: searchQuery)
                }
            }, header: {
                Text(hotKeyCategoryName)
                    .font(sectionHeaderFont)
                    .fontWeight(fontWeight)
                    .foregroundStyle(sectionHeader)
            })
        
        }
    }
}

struct HotKeySectionView_Previews: PreviewProvider {
    static var previews: some View {
        Form{
            HotKeySectionView(hotKeyCategoryName: "Navigation", hotKeyModels: [.init(
                modifiers: [.command],
                character: "1",
                text: "Project"
            ),.init(
                modifiers: [.command],
                character: "2",
                text: "Source control" )], searchQuery: "")
        }
    }
}
