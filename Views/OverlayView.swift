import SwiftUI

struct OverlayView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                JoyStickView()
                Spacer()
                InfoView()
            } 
            .padding(.all)
        }
    }
}
