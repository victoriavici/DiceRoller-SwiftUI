//
//  DiceViewModel.swift
//  DiceRoller
//
//  Created by Sebastian Mraz on 14/03/2023.
//

import Foundation
import SwiftUI

public class DiceViewModel: ObservableObject {
    
    @Published var randomNum: String? = "dice_1"
    @Published var randomNum2: String? = "dice_2"
    
    func changeDicesValues() {
        randomNum = setRandomNum()
        randomNum2 = setRandomNum()
    }
    
    func setRandomNum() -> String? {
        switch (0...5).randomElement() {
        case 0:
            return "dice_1"
        case 1:
            return "dice_2"
        case 2:
            return "dice_3"
        case 3:
            return "dice_4"
        case 4:
            return "dice_5"
        case 5:
            return "dice_6"
        default:
            return nil
        }
    }
}
