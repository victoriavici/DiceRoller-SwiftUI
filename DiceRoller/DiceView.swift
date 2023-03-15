//
//  DiceView.swift
//  DiceRoller
//
//  Created by Sebastian Mraz on 14/03/2023.
//

import Foundation
import SwiftUI

struct CustomDice: View {
    
    let dice: String
    
    var body: some View {
        Image(dice)
            .resizable()
            .frame(width: 100, height: 100)
            .scaledToFit()
            .padding()
    }
    
    
}
