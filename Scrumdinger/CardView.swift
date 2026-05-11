import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    let scrum = DailyScrum.sampleData[0]
    CardView(scrum: scrum)
}
