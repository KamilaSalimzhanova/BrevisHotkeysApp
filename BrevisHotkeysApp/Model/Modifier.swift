import Foundation

enum Modifier: String, CaseIterable {
    case control = "⌃"
    case option = "⌥"
    case shift = "⇧"
    case enter = "⏎"
    case escape = "⎋"
    case command = "⌘"
    case globe = "🌐"
    
    var description: String {
        switch self {
        case .control:
            return "ctrl"
        case .option:
            return "alt"
        case .shift:
            return "shift"
        case .enter:
            return "enter"
        case .escape:
            return "esc"
        case .command:
            return "command"
        case .globe:
            return "globe func"
        }
    }
}
