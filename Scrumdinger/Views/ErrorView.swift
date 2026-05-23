import SwiftUI

struct ErrorView: View {
    let errorWrapper: ErrorWrapper

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

private enum SampleError: Error {
    case errorRequired
}

#Preview {
    ErrorView(errorWrapper: ErrorWrapper(error: SampleError.errorRequired, guidance: "You can safely ignore this error."))
}
