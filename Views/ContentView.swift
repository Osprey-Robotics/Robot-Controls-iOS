import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            SideBarView()
        } detail: {
            ZStack {
                ARViewController()
                OverlayView()    
            }
            .navigationBarHidden(true)
            .ignoresSafeArea(.all, edges: .all)
        } 
        .navigationSplitViewStyle(.prominentDetail)
        
    }
}
