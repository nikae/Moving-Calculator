//
//  popUpVC.swift
//  Moving Calculator
//
//  Created by Nika on 7/10/17.
//  Copyright © 2017 Nika. All rights reserved.
//

import UIKit

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
}
