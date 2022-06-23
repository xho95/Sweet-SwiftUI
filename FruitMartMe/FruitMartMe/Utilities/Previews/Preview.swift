//
//  Preview.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/06/23.
//

import SwiftUI

// TODO: ViewModifier is preferred!
struct Preview<V>: View where V: View {
    let source: V
    
    var devices: [Device] = [.iPhone13Pro, .iPhone13ProMax, .iPhone8]
    var isDarkMode = true
    
    var body: some View {
        Group {
            ForEach(devices, id: \.self) {
                self.previewSource(device: $0)
            }
            
            if !devices.isEmpty && isDarkMode {
                self.previewSource(device: devices[0])
                    .preferredColorScheme(.dark)
            }
        }
    }
    
    func previewSource(device: Device) -> some View {
        source
            .previewDevice(PreviewDevice(rawValue: device.rawValue))
            .previewDisplayName(device.rawValue)
    }
    
    enum Device: String, CaseIterable {
        case iPhone8 = "iPhone 8"
        case iPhone13 = "iPhone 13"
        case iPhone13Pro = "iPhone 13 Pro"
        case iPhone13ProMax = "iPhone 13 Pro Max"
    }
}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        Preview(source: Text("Hello, SwiftUI!"))
    }
}
