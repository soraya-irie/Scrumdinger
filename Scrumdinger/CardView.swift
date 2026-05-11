import SwiftUI
import ThemeKit

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        Text(scrum.title)
            .font(.headline)
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 60)) {
    let scrum = DailyScrum.sampleData[0]
    return CardView(scrum: scrum)
        .background(scrum.theme.mainColor)
}
