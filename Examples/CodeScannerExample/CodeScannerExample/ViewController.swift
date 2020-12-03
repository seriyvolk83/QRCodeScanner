//
//  ViewController.swift
//  CodeScannerExample
//
//  Created by Volkov Alexander on 12/3/20.
//  Copyright © 2020 Volkov Alexander. All rights reserved.
//

import UIKit
import AVFoundation

/// Shows how to use `QRCodeScanner` framework.
class ViewController: UIViewController, CodeScannerViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Open scanner
        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CodeScannerViewController") as? CodeScannerViewController else {
            return
        }
        vc.delegate = self
        vc.callbackCodeScanned = { code in
            print("code: \(code)")
            vc.dismiss(animated: true, completion: nil)
        }
        self.present(vc, animated: true, completion: nil)
        
    }

    // MARK: - CodeScannerViewControllerDelegate
    
    func codeScannerUpdateUIStatus(text: String, screenState: CodeScannerScreenState) {
        print("state=\(screenState) status: \(text)")
    }
    
    func codeScannerUpdateUIFlashButton(mode: AVCaptureDevice.FlashMode) {
        /// nothing to do
    }
}

