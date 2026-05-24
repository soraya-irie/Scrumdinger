import SwiftUI

struct HistoryView: View {
    let history: History

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    let history = History(attendees: [
        Attendee(name: "Jon"),
        Attendee(name: "Darla"),
        Attendee(name: "Luis")
    ],
                          transcript: "Darla, would you like to start today? Sure, yesterday I reviewed Luis' PR and met with the design team to finalize the UI...")
    HistoryView(history: history)
}
