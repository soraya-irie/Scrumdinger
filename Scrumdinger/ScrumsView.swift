import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]

    var body: some View {
        List(scrums, id: \.title) { scrum in
            CardView(scrum: scrum)
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
