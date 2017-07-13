//
//  VariableAndMathods.swift
//  Moving Calculator
//
//  Created by Nika on 7/10/17.
//  Copyright © 2017 Nika. All rights reserved.
//

import Foundation
import UIKit


var subtotal = 0.0

var man = 0
var hour = 0
var minute = 0
var plastickWrap = 0.0
var tape = 0
var blanket = 0
var wordrob = 0
var box3x3 = 0
var box4x4 = 0
var box5x5 = 0
var boxDish = 0
var trackGas = 0
var hevyItem = 0
var elsel = 0

//MARK: --> Prices

var manPriceCash = 0.0

var priceInTime = 0.0
var materialTotalCalc = 0.0
var extraTotalCalc = 0.0

var wrapPriceCalc = 0.0
var tapeCalc = 0.0
var blanketCalc = 0.0
var wordrobCalc = 0.0
var box3Calc = 0.0
var box4Calc = 0.0
var box5Calc = 0.0
var boxDishCalc = 0.0

var plastickWrapPrice = 60.0
var tapePrice = 8.0
var blanketPrice = 29.0
var wordrobPrice = 15.0
var box3x3Price = 3.0 //1.5
var box4x4Price = 4.0 //3
var box5x5Price = 5.0 //4.5
var boxDishPrice = 7.0 

func calculateMinutes(minute: Double) -> Double {
    var toReturne = 0.0
    if minute == 0 {
        toReturne = 0.0
    } else if minute == 5.0 {
        toReturne = 0.5
    }
    return toReturne
}


func calculateTImeAndMan(time: Double, man: Double) -> Double {
    return time * man
}

func totalExtra(trackGas: Double, heviItem: Double, elsea: Double) -> Double {
    return trackGas + heviItem + elsea
}

func calculateMaterial(material: Double, price: Double) -> Double {
    return material * price
}

func materialTotal(plastickWrap: Double, tape: Double, blanket: Double, wordrob: Double, box3x3: Double, box4x4: Double, box5x5: Double, boxDish: Double  ) -> Double {
    return plastickWrap + tape + blanket + wordrob + box3x3 + box4x4 + box5x5 + boxDish
}

func subTotalFunc(timeTotal: Double, materialTotal: Double, extraTotal: Double) -> Double {
    return timeTotal + materialTotal + extraTotal
}

func calculateTips(bill: Double, procent: Double) -> Double {
    return bill * (procent / 100)
}

//MARK --> PDF

func pdfString(costumerName: String, code: String, subTotal: String, moveTime: String, movePH: String, movePrice: String,wrapCount: String, wrap: String, tapeCount: String,tape: String, blanketCount: String, blanket: String, wordrobeCount: String, wordrobe: String, box1Count: String, box1: String, box2Count: String, box2: String, box3Count: String, box3: String, box4Count: String, box4: String, trackGas: String, heavyItem: String, elsea: String)-> String {
    
   let string = "\n\n\nCostumer - \(costumerName)\nSecurity Code - \(code)\n\nMove - \(moveTime) - \(movePH) - $\(movePrice)\n\nPacking:\n\nPlasik wrap - \(wrapCount) - $\(wrap)\nTape - \(tapeCount) - $\(tape)\nBlanket - \(blanketCount) - $\(blanket)\nWardrobe - \(wordrobeCount) - $\(wordrobe)\nBox 1.5x1.5 - \(box1Count) - $\(box1)\nBox 3x3 - \(box2Count) - $\(box2)\nBox 4.5x4.5 - \(box3Count) - $\(box3)\nBox Dish - \(box4Count) - $\(box4)\n\nExtras:\n\nTrack and gas - $\(trackGas)\nHeavy Item - $\(heavyItem)\nElse - $\(elsea)\n\nSub total:\n\nTotal - $\(subTotal)"
    return string
}
















