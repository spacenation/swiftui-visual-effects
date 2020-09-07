#if os(macOS)
import SwiftUI

public struct VisualEffectBlur: View {
    private var material: NSVisualEffectView.Material
    private let blendingMode: NSVisualEffectView.BlendingMode
    private let isEmphasized: Bool
    
    public init(material: NSVisualEffectView.Material = .headerView, blendingMode: NSVisualEffectView.BlendingMode = .withinWindow, isEmphasized: Bool = false) {
        self.material = material
        self.blendingMode = blendingMode
        self.isEmphasized = isEmphasized
    }
    
    public var body: some View {
        Representable(material: material, blendingMode: blendingMode, isEmphasized: isEmphasized)
            .accessibility(hidden: true)
    }
}

extension VisualEffectBlur {
    struct Representable: NSViewRepresentable {
        var material: NSVisualEffectView.Material
        var blendingMode: NSVisualEffectView.BlendingMode
        var isEmphasized: Bool
        
        func makeNSView(context: Context) -> NSVisualEffectView {
            context.coordinator.visualEffectView
        }
        
        func updateNSView(_ view: NSVisualEffectView, context: Context) {
            context.coordinator.update(material: material, blendingMode: blendingMode, isEmphasized: isEmphasized)
        }
        
        func makeCoordinator() -> Coordinator {
            Coordinator()
        }
    }
    
    class Coordinator {
        let visualEffectView = NSVisualEffectView()
        
        func update(material: NSVisualEffectView.Material, blendingMode: NSVisualEffectView.BlendingMode, isEmphasized: Bool) {
            visualEffectView.material = material
            visualEffectView.blendingMode = blendingMode
            visualEffectView.isEmphasized = isEmphasized
        }
    }
}

#endif
