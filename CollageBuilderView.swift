import SwiftUI

struct CollageBuilderView: View {
    
    @ObservedObject private(set) var store: AppStore
    
    private var collage: Collage { store.state.collage }
    private var collageSize: CGSize { store.state.collageSize }
    
    var body: some View {
        ZStack {
            collageView
                .overlay {
                    ControlPointsView(
                        selectedPointsIDs: store.state.selectedPointsIDs,
                        controlPoints: collage.controlPoints,
                        size: collageSize
                    )
                }
