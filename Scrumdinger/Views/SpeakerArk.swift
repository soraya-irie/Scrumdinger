import SwiftUI

struct SpeakerArk: Shape {
    let speakerIndex: Int
    let totalSpeakers: Int

    private var degreesPerSpeaker: Double {
        360.0 / Double(totalSpeakers)
    }

    func path(in rect: CGRect) -> Path {
        return Path { path in
        }
    }
}
