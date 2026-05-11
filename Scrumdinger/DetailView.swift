import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DetailView(scrum: DailyScrum.sampleData[0])
}
