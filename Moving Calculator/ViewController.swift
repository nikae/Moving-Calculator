//
//  ViewController.swift
//  Moving Calculator
//
//  Created by Nika on 7/10/17.
//  Copyright © 2017 Nika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var manLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var PlastickWrapLabel: UILabel!
    @IBOutlet weak var maskingTapeLabel: UILabel!
    @IBOutlet weak var blanketLabel: UILabel!
    @IBOutlet weak var boxWordrobLabel: UILabel!
    @IBOutlet weak var box3X3Label: UILabel!
    @IBOutlet weak var box4X4Label: UILabel!
    @IBOutlet weak var box5X5Label: UILabel!
    @IBOutlet weak var boxDishLabel: UILabel!
    @IBOutlet weak var trackGasLabel: UILabel!
    @IBOutlet weak var hevyItemLabel: UILabel!
    @IBOutlet weak var elseLabel: UILabel!
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b10: UIButton!
    @IBOutlet weak var b11: UIButton!
    @IBOutlet weak var b12: UIButton!
    @IBOutlet weak var b13: UIButton!
    @IBOutlet weak var b14: UIButton!
    @IBOutlet weak var b15: UIButton!
    @IBOutlet weak var b16: UIButton!
    @IBOutlet weak var b17: UIButton!
    @IBOutlet weak var b18: UIButton!
    @IBOutlet weak var b19: UIButton!
    @IBOutlet weak var b20: UIButton!
    @IBOutlet weak var b21: UIButton!
    @IBOutlet weak var b22: UIButton!
    @IBOutlet weak var b23: UIButton!
    @IBOutlet weak var b24: UIButton!
    @IBOutlet weak var b25: UIButton!
    @IBOutlet weak var b26: UIButton!
    @IBOutlet weak var b27: UIButton!
    @IBOutlet weak var b28: UIButton!
    @IBOutlet weak var b29: UIButton!
    @IBOutlet weak var b30: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
   }

    func viewShape(view: UIView) {
        view.clipsToBounds = true
        view.layer.cornerRadius = view.frame.height/2
    }
    
    @IBAction func manHit(_ sender: UIButton) {
        if sender.tag == 0 {
            man -= 1
            manLabel.text = "\(man)"
        } else if sender.tag == 1 {
            man += 1
            manLabel.text = "\(man)"
        }
        
        if  man <= 0 {
            man = 0
            manLabel.text = "0"
        }
    }
    
    @IBAction func hhHit(_ sender: UIButton) {
        if sender.tag == 0 {
            hour -= 1
            hourLabel.text = "\(hour)"
        } else if sender.tag == 1 {
            hour += 1
            hourLabel.text = "\(hour)"
        }
        
        if hour <= 0 {
            hour = 0
            hourLabel.text = "HH"
        }
        
    }
    
    @IBAction func mmHit(_ sender: UIButton) {
        if sender.tag == 0 {
            minute -= 5
            minuteLabel.text = "\(minute)"
        } else if sender.tag == 1 {
            minute += 5
            minuteLabel.text = "\(minute)"
        }
        
        
        if minute >= 60 || minute <= 0 {
            minute = 0
            minuteLabel.text = "MM"
        }
    }
    
    @IBAction func plastickWrapHit(_ sender: UIButton) {
        if sender.tag == 0 {
            plastickWrap -= 0.5
            PlastickWrapLabel.text = "\(plastickWrap)"
        } else if sender.tag == 1 {
            plastickWrap += 0.5
            PlastickWrapLabel.text = "\(plastickWrap)"
        }
        
        if  plastickWrap <= 0 {
            plastickWrap = 0
            PlastickWrapLabel.text = "0.0"
        }
    }
    
    @IBAction func tapeHit(_ sender: UIButton) {
        if sender.tag == 0 {
            tape -= 1
            maskingTapeLabel.text = "\(tape)"
        } else if sender.tag == 1 {
            tape += 1
            maskingTapeLabel.text = "\(tape)"
        }
        
        if  tape <= 0 {
            tape = 0
            maskingTapeLabel.text = "0"
        }

    }
    
    @IBAction func planketHit(_ sender: UIButton) {
        if sender.tag == 0 {
            blanket -= 1
            blanketLabel.text = "\(blanket)"
        } else if sender.tag == 1 {
            blanket += 1
            blanketLabel.text = "\(blanket)"
        }
        
        if  blanket <= 0 {
            blanket = 0
            blanketLabel.text = "0"
        }
    }
    @IBAction func wordrobHit(_ sender: UIButton) {
        if sender.tag == 0 {
            wordrob -= 1
            boxWordrobLabel.text = "\(wordrob)"
        } else if sender.tag == 1 {
            wordrob += 1
            boxWordrobLabel.text = "\(wordrob)"
        }
        
        if  wordrob <= 0 {
            wordrob = 0
            boxWordrobLabel.text = "0"
        }
    }
    @IBAction func box3x3Hit(_ sender: UIButton) {
        if sender.tag == 0 {
            box3x3 -= 1
            box3X3Label.text = "\(box3x3)"
        } else if sender.tag == 1 {
            box3x3 += 1
            box3X3Label.text = "\(box3x3)"
        }
        
        if  box3x3 <= 0 {
            box3x3 = 0
            box3X3Label.text = "0"
        }
    }
    @IBAction func box4x4Hit(_ sender: UIButton) {
        if sender.tag == 0 {
            box4x4 -= 1
            box4X4Label.text = "\(box4x4)"
        } else if sender.tag == 1 {
            box4x4 += 1
            box4X4Label.text = "\(box4x4)"
        }
        
        if  box4x4 <= 0 {
            box4x4 = 0
            box4X4Label.text = "0"
        }
    }
    @IBAction func box5x5Hit(_ sender: UIButton) {
        if sender.tag == 0 {
            box5x5 -= 1
            box5X5Label.text = "\(box5x5)"
        } else if sender.tag == 1 {
            box5x5 += 1
            box5X5Label.text = "\(box5x5)"
        }
        
        if  box5x5 <= 0 {
            box5x5 = 0
            box5X5Label.text = "0"
        }
    }
    
    @IBAction func boxDishHit(_ sender: UIButton) {
        if sender.tag == 0 {
            boxDish -= 1
            boxDishLabel.text = "\(boxDish)"
        } else if sender.tag == 1 {
            boxDish += 1
            boxDishLabel.text = "\(boxDish)"
        }
        
        if  boxDish <= 0 {
            boxDish = 0
            boxDishLabel.text = "0"
        }

    }
    
    @IBAction func trackAndGasHit(_ sender: UIButton) {
        if sender.tag == 0 {
            trackGas -= 5
            trackGasLabel.text = "$\(trackGas)"
        } else if sender.tag == 1 {
            trackGas += 5
            trackGasLabel.text = "$\(trackGas)"
        }
        
        if  trackGas <= 0 {
            trackGas = 0
            trackGasLabel.text = "$"
        }

    }
    
    @IBAction func hevyItemHit(_ sender: UIButton) {
        if sender.tag == 0 {
            hevyItem -= 5
            hevyItemLabel.text = "$\(hevyItem)"
        } else if sender.tag == 1 {
            hevyItem += 5
            hevyItemLabel.text = "$\(hevyItem)"
        }
        
        if  hevyItem <= 0 {
            hevyItem = 0
            hevyItemLabel.text = "$"
        }

    }
    
    @IBAction func elseHit(_ sender: UIButton) {
        if sender.tag == 0 {
            elsel -= 5
            elseLabel.text = "$\(elsel)"
        } else if sender.tag == 1 {
            elsel += 5
            elseLabel.text = "$\(elsel)"
        }
        
        if  elsel <= 0 {
            elsel = 0
            elseLabel.text = "$"
        }

    }

    @IBAction func cashHit(_ sender: UIButton) {
        
        if man == 2 || man == 3 || man == 4{
            var title = ""
            if sender.tag == 0 {
               title = "Calculating Cash"
            } else if sender.tag == 1 {
                title = "Calculating card"
            }
            
            let alert = UIAlertController(title: title , message: "Are you shure it's ready to calculate?", preferredStyle: .actionSheet)
            let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            let calculate = UIAlertAction(title: "Calculate", style: .default, handler:  { (action: UIAlertAction) in
                
                if sender.tag == 0 {
                if man == 2 {
                    manPriceCash = 59
                } else if man == 3 {
                    manPriceCash = 84
                } else if man == 4 {
                    manPriceCash = 104
                }
                } else if sender.tag == 1 {
                    if man == 2 {
                        manPriceCash = 69
                    } else if man == 3 {
                        manPriceCash = 94
                    } else if man == 4 {
                        manPriceCash = 114
                    }
                }
                
                let mmFirst = (Double(minute) / 60 )
                let mm = Double(String(format: "%.2f", mmFirst))!
                
                priceInTime = calculateTImeAndMan(time: Double(hour) + mm, man: Double(manPriceCash))
                wrapPriceCalc = calculateMaterial(material: plastickWrap, price: plastickWrapPrice)
                tapeCalc = calculateMaterial(material: Double(tape), price: tapePrice)
                blanketCalc = calculateMaterial(material: Double(blanket), price: blanketPrice)
                wordrobCalc = calculateMaterial(material: Double(wordrob), price: wordrobPrice)
                box3Calc = calculateMaterial(material: Double(box3x3), price: box3x3Price)
                box4Calc = calculateMaterial(material: Double(box4x4), price: box4x4Price)
                box5Calc = calculateMaterial(material: Double(box5x5), price: box5x5Price)
                boxDishCalc = calculateMaterial(material: Double(boxDish), price: boxDishPrice)
                materialTotalCalc = materialTotal(plastickWrap: wrapPriceCalc, tape: tapeCalc, blanket: blanketCalc, wordrob: wordrobCalc, box3x3: box3Calc, box4x4: box4Calc, box5x5: box5Calc, boxDish: boxDishCalc)
                extraTotalCalc = totalExtra(trackGas: Double(trackGas), heviItem: Double(hevyItem), elsea: Double(elsel))
                subtotal = subTotalFunc(timeTotal: priceInTime, materialTotal: materialTotalCalc, extraTotal: extraTotalCalc)
                
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popUpVC") as! popUpVC
                self.present(vc, animated: true, completion: nil)
            })
            
            alert.addAction(calculate)
            alert.addAction(cancel)
            present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Error", message: "Mover: should be 2, 3, or 4", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }

    @IBAction func refreshHit(_ sender: Any) {
        man = 0
        manLabel.text = "0"
        
        hour = 0
        hourLabel.text = "HH"
        
        minute = 0
        minuteLabel.text = "MM"
        
        plastickWrap = 0
        PlastickWrapLabel.text = "0.0"
        
        tape = 0
        maskingTapeLabel.text = "0"
        
        blanket = 0
        blanketLabel.text = "0"
        
        wordrob = 0
        boxWordrobLabel.text = "0"
        
        box3x3 = 0
        box3X3Label.text = "0"
        
        box4x4 = 0
        box4X4Label.text = "0"
        
        box5x5 = 0
        box5X5Label.text = "0"
        
        boxDish = 0
        boxDishLabel.text = "0"
        
        trackGas = 0
        trackGasLabel.text = "$"
        
        hevyItem = 0
        hevyItemLabel.text = "$"
        
        elsel = 0
        elseLabel.text = "$"
    }
}

