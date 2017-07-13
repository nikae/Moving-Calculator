//
//  popUpVC.swift
//  Moving Calculator
//
//  Created by Nika on 7/10/17.
//  Copyright © 2017 Nika. All rights reserved.
//

import UIKit
import MessageUI

class popUpVC: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var detiledLabel: UILabel!
    
    @IBOutlet weak var moveTimeLabel: UILabel!
    @IBOutlet weak var wrapCountLabel: UILabel!
    @IBOutlet weak var tapeCountLabel: UILabel!
    @IBOutlet weak var blanketCountLabel: UILabel!
    @IBOutlet weak var wordrobCountLabel: UILabel!
    @IBOutlet weak var box15CountLabel: UILabel!
    @IBOutlet weak var box3CountLabel: UILabel!
    @IBOutlet weak var box45CountLabel: UILabel!
    @IBOutlet weak var boxDishCountLabel: UILabel!
    @IBOutlet weak var trackGasCountLabel: UILabel!
    @IBOutlet weak var heavyItemCountLabel: UILabel!
    @IBOutlet weak var elseCountLabel: UILabel!
    
    @IBOutlet weak var movePriceLabel: UILabel!
    @IBOutlet weak var wrapPriceLabel: UILabel!
    @IBOutlet weak var tapePriceLabel: UILabel!
    @IBOutlet weak var blanketPriceLabel: UILabel!
    @IBOutlet weak var wordrobPriceLabel: UILabel!
    @IBOutlet weak var box15PriceLabel: UILabel!
    @IBOutlet weak var box3PriceLabel: UILabel!
    @IBOutlet weak var box45PriceLabel: UILabel!
    @IBOutlet weak var boxDishPriceLabel: UILabel!
    @IBOutlet weak var trackGasPriceLabel: UILabel!
    @IBOutlet weak var heavyItemPriceLabel: UILabel!
    @IBOutlet weak var elsePriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = "$\(subtotal)"
        detiledLabel.text = "Move - $\(priceInTime) / Packing - $\(materialTotalCalc) / Extra - $\(extraTotalCalc)"
        
        moveTimeLabel.text = "\(hour):\(minute) * \(Int(manPriceCash))"
        wrapCountLabel.text = "\(plastickWrap) * \(Int(plastickWrapPrice))"
        tapeCountLabel.text = "\(tape) * \(Int(tapePrice))"
        blanketCountLabel.text = "\(blanket) * \(Int(blanketPrice))"
        wordrobCountLabel.text = "\(wordrob) * \(Int(wordrobPrice))"
        box15CountLabel.text = "\(box3x3) * \(Int(box3x3Price))"
        box3CountLabel.text = "\(box4x4) * \(Int(box4x4Price))"
        box45CountLabel.text = "\(box5x5) * \(Int(box5x5Price))"
        boxDishCountLabel.text = "\(boxDish) * \(Int(boxDishPrice))"
        trackGasCountLabel.text = "-"
        heavyItemCountLabel.text = "-"
        elseCountLabel.text = "-"
        
        movePriceLabel.text = "$\(priceInTime)"
        wrapPriceLabel.text = "$\(wrapPriceCalc)"
        tapePriceLabel.text = "$\(tapeCalc)"
        blanketPriceLabel.text = "$\(blanketCalc)"
        wordrobPriceLabel.text = "$\(wordrobCalc)"
        box15PriceLabel.text = "$\(box3Calc)"
        box3PriceLabel.text = "$\(box4Calc)"
        box45PriceLabel.text = "$\(box5Calc)"
        boxDishPriceLabel.text = "$\(boxDishCalc)"
        trackGasPriceLabel.text = "$\(Double(trackGas))"
        heavyItemPriceLabel.text = "$\(Double(hevyItem))"
        elsePriceLabel.text = "$\(Double(elsel))"
    }

    @IBAction func tipHit(_ sender: UIButton) {
        if sender.tag == 0 {
            let tip = calculateTips(bill: subtotal, procent: 15.0)
            totalLabel.text = "$\(subtotal) + $\(String(format: "%.2f", tip)) Tip = $\(String(format: "%.2f",subtotal + tip))"
            totalLabel.adjustsFontSizeToFitWidth = true
        } else if sender.tag == 1 {
            let tip = calculateTips(bill: subtotal, procent: 20.0)
            totalLabel.text = "$\(subtotal) + $\(String(format: "%.2f", tip)) Tip = $\(String(format: "%.2f",subtotal + tip))"
            totalLabel.adjustsFontSizeToFitWidth = true
        }  else if sender.tag == 2 {
            let tip = calculateTips(bill: subtotal, procent: 30)
            totalLabel.text = "$\(subtotal) + $\(String(format: "%.2f", tip)) Tip = $\(String(format: "%.2f",subtotal + tip))"
            totalLabel.adjustsFontSizeToFitWidth = true
        } else {
            totalLabel.text = "$\(subtotal)"
        }
    }
      @IBAction func dismiss(_ sender: UIButton) {
          self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func confirmHit(_ sender: UIButton) {
        let alsrt = UIAlertController(title: "confirm / resend", message: "Do you want to confirm or resend confirmation?", preferredStyle: .actionSheet)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let confirm = UIAlertAction(title: "Confirm", style: .default, handler:{ (_) in
            self.presentAlert()
        })
        let resend = UIAlertAction(title: "Resend", style: .default, handler:{ (_) in
            let data1 = self.retrievePDFFromDisk()
            self.share(link: data1 as! NSURL)
        })

        alsrt.addAction(confirm)
        alsrt.addAction(resend)
        alsrt.addAction(cancel)
        self.present(alsrt, animated: true, completion: nil)
    }
    
    func presentAlert() {
        let alertController = UIAlertController(title: "Confirm Total of $\(subtotal)", message: "Please input your name and account code", preferredStyle: .alert)
        let confirm = UIAlertAction(title: "Confirm", style: .default, handler: { (_) in
            var name = ""
            var code = ""
            if let field = alertController.textFields?[0] {
                if field.text != "" {
                    name = field.text!.capitalized
                } else {
                    name = "No costumer's name presented"
                }
            }
            if let field = alertController.textFields?[1] {
                if field.text != "" {
                    code = field.text!
                } else {
                    code = "No account code is presented"
                }
            }
            
            let textForPdf = pdfString(costumerName: name, code: code, subTotal: "\(subtotal)", moveTime: "\(hour):\(minute)",movePH: "\(Int(manPriceCash))", movePrice: "\(priceInTime)", wrapCount: "\(plastickWrap)", wrap: "\(wrapPriceCalc)", tapeCount: "\(tape)", tape: "\(tapeCalc)", blanketCount: "\(blanket)", blanket: "\(blanketCalc)", wordrobeCount: "\(wordrob)", wordrobe: "\(wordrobCalc)", box1Count: "\(box3x3)", box1: "\(box3Calc)", box2Count: "\(box4x4)", box2: "\(box4Calc)", box3Count: "\(box5x5)", box3: "\(box5Calc)", box4Count: "\(boxDish)", box4: "$\(boxDishCalc)", trackGas: "\(Double(trackGas))", heavyItem: "\(Double(hevyItem))", elsea: "\(Double(elsel))")
            self.createPdf(text: textForPdf)
        })
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        alertController.addTextField { (textField) in
            textField.placeholder = "Full Name"
        }
        alertController.addTextField { (textField) in
            textField.placeholder = "Security Code"
            textField.keyboardType = .numberPad
        }
        alertController.addAction(confirm)
        alertController.addAction(cancel)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func createPdf(text: String) {
        
        let formatter = UISimpleTextPrintFormatter(text: text)
        formatter.textAlignment = .justified
        formatter.font?.withSize(20)
        let render = UIPrintPageRenderer()
        render.addPrintFormatter(formatter, startingAtPageAt: 0)
        
        let page = CGRect(x: 0, y: 0, width: 595.2, height: 841.8) // A4, 72 dpi
        let printable = page.insetBy(dx: 0, dy: 0)
        
        render.setValue(NSValue(cgRect: page), forKey: "paperRect")
        render.setValue(NSValue(cgRect: printable), forKey: "printableRect")
        
        let rect = CGRect.zero
        let pdfData = NSMutableData()
        UIGraphicsBeginPDFContextToData(pdfData, rect, nil)
        
        for i in 1...render.numberOfPages {
            UIGraphicsBeginPDFPage();
            let bounds = UIGraphicsGetPDFContextBounds()
            render.drawPage(at: i - 1, in: bounds)
        }
        
        UIGraphicsEndPDFContext()
        
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        pdfData.write(toFile: "\(documentsPath)/new.pdf", atomically: true)
        let data = getPDFAsFile(pdfData: pdfData)
        share(link: data as! NSURL)
    }
    
    func retrievePDFFromDisk () -> AnyObject {
        var docURL = (FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)).last! as NSURL
        docURL = docURL.appendingPathComponent( "document.pdf")! as NSURL
        return docURL
    }
    
    func getPDFAsFile (pdfData:NSData) -> AnyObject {
        var docURL = (FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)).last! as NSURL
        docURL = docURL.appendingPathComponent("document.pdf")! as NSURL
        pdfData.write(to: docURL as URL, atomically: true)
        return docURL
    }
    
    func share(link: NSURL) {
        let objectsToShare = [link] as [Any]
        let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        activityVC.excludedActivityTypes = [UIActivityType.airDrop, UIActivityType.addToReadingList]
        self.present(activityVC, animated: true, completion: nil)
    }
}


