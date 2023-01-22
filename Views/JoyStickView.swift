import SwiftUI

struct JoyStickView: View {
    @State var offset = CGSize()
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(.thickMaterial)
                .frame(maxWidth: 150)
            Circle()
                .foregroundStyle(.thinMaterial)
                .frame(maxWidth: 100)
                .offset(offset)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            withAnimation(.linear) {
                                offset = value.translation
                            }    
                        })
                        .onEnded({ value in
                            withAnimation(.spring()) {
                                offset = .zero
                            }
                        })
                )
        }
        .padding(.all)
        .aspectRatio(1/1, contentMode: .fit)
    }
}
