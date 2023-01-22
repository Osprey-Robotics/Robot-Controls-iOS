import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack(alignment: .trailing) {
            Label("100%", systemImage: "battery.100")
                .font(.headline)
                .foregroundStyle(.green, .white)
                .padding(.all)
                .background(in: Capsule(), fillStyle: FillStyle())
            ForEach(Componet.all) { componet in
                Label(componet.name, systemImage: componet.status == .Critical ? "xmark.octagon.fill" : "checkmark.circle.fill")
                    .foregroundStyle(componet.status == .Critical ? Color.red : Color.green)
                    .padding(.all)
                    .background(in: Capsule(), fillStyle: FillStyle())
            }
        }
        
    }
}
