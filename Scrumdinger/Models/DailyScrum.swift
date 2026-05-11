import Foundation
import ThemeKit

struct DailyScrum: Identifiable {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}
