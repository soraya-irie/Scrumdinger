import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]

    var body: some View {
        List(scrums, id: \.title) { scrum in

        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
