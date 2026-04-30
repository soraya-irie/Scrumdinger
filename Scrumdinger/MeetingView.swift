import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
        }
    }
}

#Preview {
    MeetingView()
}
