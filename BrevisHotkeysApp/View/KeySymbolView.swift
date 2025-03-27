//
//  KeySymbolView.swift
//  BrevisHotkeysApp
//
//  Created by kamila on 28.03.2025.
//

import SwiftUI

struct KeySymbolView: View {
    let midIndex = Modifier.allCases.count/2 + 1
    var body: some View {
        HStack(alignment: .top) {
            KeySymbolViewColumn(lowerIndex: 0, upperIndex: midIndex)
            KeySymbolViewColumn(lowerIndex: midIndex, upperIndex: Modifier.allCases.count)
        }
    }
}

struct KeySymbolViewColumn: View {
    let lowerIndex: Int
    let upperIndex: Int
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(lowerIndex..<upperIndex, id:\.self) { i in
                KeyValueRow(modifier: Modifier.allCases[i])
            }
        }.frame(maxWidth: .infinity)
    }
}

struct KeyValueRow: View {
    let modifier: Modifier
    let modifierFont: Font = Font.headline
    var body: some View {
        Text("\(modifier.rawValue) = \(modifier.description)").font(modifierFont)
    }
}

struct KeySymbolView_Previews: PreviewProvider {
    static var previews: some View {
        KeySymbolView()
    }
}
