//
//  Alert.swift
//  Barcode-Scanner
//
//  Created by Mac on 18/01/25.
//
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title : String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              message: "Something is wrong with the camera. We are unable to capture the picture",
                                              dismissButton: .default(Text("OK")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scanned Type",
                                              message: "The value scanned is not valid. This app scans EAN-8 and EAN-13",
                                              dismissButton: .default(Text("OK")))

}


