import SwiftUI
import ThemeKit

struct ScrumsView: View {
    let scrums: [DailyScrum]

    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: Text(scrum.title)) {
                    CardView(scrum: scrum)
                        .listRowBackground(scrum.theme.mainColor)
                }
            }
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
