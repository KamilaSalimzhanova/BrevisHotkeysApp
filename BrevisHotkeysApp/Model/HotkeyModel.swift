import Foundation

struct HotkeyModel: Identifiable {
    let id = UUID()
    let modifiers: [String] // create modifier data type enum
    let character: String
    let text: String
    var description: String {
        "Description - \(modifiers) \(character.capitalized)"
    }
}
