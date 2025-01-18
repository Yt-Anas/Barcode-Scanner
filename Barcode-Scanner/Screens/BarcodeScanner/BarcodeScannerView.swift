//
//  ContentView.swift
//  Barcode-Scanner
//
//  Created by Mac on 15/01/25.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity , maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned barcode : ", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(viewModel.statusTextColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title) ,
                      message: Text(alertItem.message ),
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}

//#Preview {
//    BarcodeScannerView()
//}
