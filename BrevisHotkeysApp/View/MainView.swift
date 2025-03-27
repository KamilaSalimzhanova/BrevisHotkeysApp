//
//  MainView.swift
//  BrevisHotkeysApp
//
//  Created by kamila on 28.03.2025.
//

import SwiftUI

struct MainView: View {
    @State private var searchQuery: String = ""
    @StateObject private var viewModel: HotkeyCategoryViewModel = HotkeyCategoryViewModel()
    var body: some View {
        NavigationStack {
            Form {
                List(viewModel.hotKeyCategoryViewModel) { hotKeyCategory in
                    HotKeySectionView(hotKeyCategoryName: hotKeyCategory.name, hotKeyModels: hotKeyCategory.hotkeymodel, searchQuery: searchQuery)
                }
            }
            .navigationTitle("Hot Keys")
            .searchable(text: $searchQuery, prompt: "Search ")
            KeySymbolView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
