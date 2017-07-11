//
//  PriceVC.swift
//  Moving Calculator
//
//  Created by Nika on 7/10/17.
//  Copyright © 2017 Nika. All rights reserved.
//

import UIKit

class PriceVC: UIViewController {
    @IBOutlet weak var moveCashLabel: UILabel!
    @IBOutlet weak var MoveCardLabel: UILabel!
    @IBOutlet weak var wrapLabel: UILabel!
    @IBOutlet weak var tapeLabel: UILabel!
    @IBOutlet weak var blanketLabel: UILabel!
    @IBOutlet weak var wordrobLabel: UILabel!
    @IBOutlet weak var box15Label: UILabel!
    @IBOutlet weak var box3Label: UILabel!
    @IBOutlet weak var box45Label: UILabel!
    @IBOutlet weak var boxDishLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        moveCashLabel.text = "2-$59, 3-$84, 4-$104"
        MoveCardLabel.text = "2-$69, 3-$94, 4-$114"
        
        moveCashLabel.adjustsFontSizeToFitWidth = true
        MoveCardLabel.adjustsFontSizeToFitWidth = true
        
        wrapLabel.text = "$\(plastickWrapPrice). each"
        tapeLabel.text = "$\(tapePrice). each"
        blanketLabel.text = "$\(blanketPrice). each"
        wordrobLabel.text = "$\(wordrobPrice). each"
        box15Label.text = "$\(box3x3Price). each"
        box3Label.text = "$\(box4x4Price). each"
        box45Label.text = "$\(box5x5Price). each"
        boxDishLabel.text = "$\(boxDishPrice). each"
    }
}
