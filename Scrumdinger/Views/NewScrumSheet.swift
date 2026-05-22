import SwiftUI

struct NewScrumSheet: View {
    @State private var newScrum = DailyScrum.emptyScrum

    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $newScrum, saveEdits: { dailyScrum in
            })
        }
    }
}

#Preview {
    NewScrumSheet()
}
