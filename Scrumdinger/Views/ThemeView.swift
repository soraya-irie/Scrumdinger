import SwiftUI
import ThemeKit

struct ThemeView: View {
    let theme: Theme

    var body: some View {
        Text(theme.name)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    ThemeView(theme: .buttercup)
}
