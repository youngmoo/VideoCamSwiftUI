//
//  CameraService+Extensions.swift
//  SwiftCamera
//
//  Created by Rolando Rodriguez on 10/15/20.
//

import Foundation
import UIKit
import AVFoundation

extension AVCaptureVideoOrientation {
    init?(deviceOrientation: UIDeviceOrientation) {
        print("init extension")
        switch deviceOrientation {
        case .portrait: self = .portrait
        case .portraitUpsideDown: self = .portraitUpsideDown
        case .landscapeLeft: self = .landscapeRight
        case .landscapeRight: self = .landscapeLeft
        default: return nil
        }
        print(self)
    }
    
    init?(interfaceOrientation: UIInterfaceOrientation) {
        print("init extension()")
        switch interfaceOrientation {
        case .portrait: self = .portrait
        case .portraitUpsideDown: self = .portraitUpsideDown
        case .landscapeLeft: self = .landscapeLeft
        case .landscapeRight: self = .landscapeRight
        default: return nil
        }
        print(self)
    }
}

extension AVCaptureDevice.DiscoverySession {
    var uniqueDevicePositionsCount: Int {
        
        var uniqueDevicePositions = [AVCaptureDevice.Position]()
        
        for device in devices where !uniqueDevicePositions.contains(device.position) {
            uniqueDevicePositions.append(device.position)
        }
        
        return uniqueDevicePositions.count
    }
}
