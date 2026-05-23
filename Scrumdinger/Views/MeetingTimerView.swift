import SwiftUI
import ThemeKit
import TimerKit

struct MeetingTimerView: View {
    let speakers: [ScrumTimer.Speaker]
    let theme: Theme

    var body: some View {
        Circle()
            .strokeBorder(lineWidth: 24)
            .overlay {
                Text("Placeholder")
            }
    }
}

#Preview {
    let speakers = [ScrumTimer.Speaker(name: "Bill", isCompleted: true), ScrumTimer.Speaker(name: "Cathy", isCompleted: false)]
    MeetingTimerView(speakers: speakers, theme: .yellow)
}
