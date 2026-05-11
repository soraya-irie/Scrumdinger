import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum

    var body: some View {
        List {
        }
    }
}

#Preview {
    NavigationStack {
        DetailView(scrum: DailyScrum.sampleData[0])
    }
}
