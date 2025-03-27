import Foundation

struct HotkeyModel: Identifiable {
    let id = UUID()
    let modifiers: [Modifier]
    let character: String
    let text: String
    var description: String {
        "Description - \(modifiers) \(character.capitalized)"
    }
}
