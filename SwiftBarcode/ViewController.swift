//
//  ViewController.swift
//  SwiftBarcode
//
//  Created by Humberto Aquino on 3/14/15.
//  Copyright (c) 2015 Humberto Aquino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BarcodeDelegate {

    @IBOutlet weak var codeTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("Segue!")
        
        let barcodeViewController: BarcodeViewController = segue.destinationViewController as! BarcodeViewController
        barcodeViewController.delegate = self
        
    }
    
    func barcodeReaded(barcode: String) {
        print("Barcode leido: \(barcode)")
        codeTextView.text = barcode
    }
}

