import SwiftUI

struct Componet: Identifiable, Hashable, Codable {
    var id = UUID().uuidString
    var name = "BLE Module"
    var status = StatusType.Critical
}
enum StatusType: String, Codable {
    case Critical
    case SubNominal
    case Nominal
}
extension Componet {
    static let all = [
        Componet(),
        Componet(name: "Motor 1"),
        Componet(name: "Motor 2"),
        Componet(name: "Motor 3"),
        Componet(name: "Motor 4"),
        Componet(name: "Chopper Motor"),
        Componet(name: "Chopper Motor 2"),
        
        
    ]
}
