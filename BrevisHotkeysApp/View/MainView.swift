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
                    Text(hotKeyCategory.name)
                }
            }
            .navigationTitle("Hot Keys")
            .searchable(text: $searchQuery, prompt: "Search ")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
