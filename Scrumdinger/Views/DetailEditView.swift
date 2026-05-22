import SwiftUI
import ThemeKit

struct DetailEditView: View {
    let scrum: DailyScrum

    @State private var attendeeName = ""
    @State private var title: String
    @State private var lengthInMinutesAsDouble: Double
    @State private var theme: Theme
    @Environment(\.dismiss) private var dismiss

    private var isCreatingScrum: Bool

    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $title)
                HStack {
                    Slider(value: $lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    .accessibilityValue("\(String(format: "%.0f", lengthInMinutesAsDouble)) minutes")
                    Spacer()
                    Text("\(String(format: "%.0f", lengthInMinutesAsDouble)) minutes")
                        .accessibilityHidden(true)
                }
                ThemePicker(selection: $theme)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    scrum.attendees.remove(atOffsets: indices)
                }
                HStack {
                    TextField("New Attendee", text: $attendeeName)
                    Button(action: {
                        withAnimation {
                            let attendee = Attendee(name: attendeeName)
                            scrum.attendees.append(attendee)
                            attendeeName = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attendee")
                    }
                    .disabled(attendeeName.isEmpty)
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancel") {
                    dismiss()
                }
            }
            ToolbarItem(placement: .confirmationAction) {
                Button("Done") {
                    saveEdits(scrum)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var scrum = DailyScrum.sampleData[0]
    DetailEditView(scrum: $scrum, saveEdits: { _ in })
}
