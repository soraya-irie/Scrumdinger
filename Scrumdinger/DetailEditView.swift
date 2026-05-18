import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum

    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
            }
        }
    }
}

#Preview {
    DetailEditView()
}
