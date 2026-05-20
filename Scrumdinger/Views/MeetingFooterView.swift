import SwiftUI

struct MeetingFooterView: View {
    var body: some View {
        HStack {
            Text("Speaker 1 of 3")
            Spacer()
            Button(action: {}) {
                Image(systemName: "forward.fill")
            }
            .accessibilityLabel("Next speaker")
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    MeetingFooterView()
}
