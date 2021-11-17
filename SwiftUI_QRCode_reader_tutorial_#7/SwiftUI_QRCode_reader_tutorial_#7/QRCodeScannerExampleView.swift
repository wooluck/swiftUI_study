//
//  QRCodeScannerExampleView.swift
//  SwiftUI_QRCode_reader_tutorial_#7
//
//  Created by 우럭mac on 2021/11/10.
//

import SwiftUI

struct QRCodeScannerExampleView: View {
    @State var isPresentingScanner = false
    @State var scannedCode: String?

    var body: some View {
        
        ZStack {
            
            if self.scannedCode != nil {
                MyWebView(urlToLoad: self.scannedCode!)
            } else {
                MyWebView(urlToLoad: "https://www.naver.com")
            }
            
            VStack{
                
                Spacer()
                
                Button {
                    self.isPresentingScanner = true
                } label: {
                    Text("로또번호 확인")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(12)
                        .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 5))
                }
                .sheet(isPresented: $isPresentingScanner) {
                    self.scannerSheet
                }
                
                Spacer().frame(height: 30)
                
            }
            
        }
        
    }

    var scannerSheet : some View {
        
        ZStack {
            CodeScannerView(
                codeTypes: [.qr],
                completion: { result in
                    if case let .success(code) = result {
                        self.scannedCode = code
                        self.isPresentingScanner = false
                    }
                }
            )
            QRCodeGuideLineView()
        }
        
    }
}

struct QRCodeScannerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeScannerExampleView()
    }
}
