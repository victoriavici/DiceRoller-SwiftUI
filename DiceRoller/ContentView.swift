//
//  ContentView.swift
//  DiceRoller
//
//  Created by Sebastian Mraz on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var diceViewModel = DiceViewModel()
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                HStack {
                    if let randomNum1 = diceViewModel.randomNum,
                       let randomNum2 = diceViewModel.randomNum2 {
                        CustomDice(dice: randomNum1)
                        CustomDice(dice: randomNum2)
                    }
                }
                Button {
                    diceViewModel.changeDicesValues()
                } label: {
                    Text("ROLL")
                    .font(.system(size: 25, weight: .bold))
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(15)
                    .border(Color.white, width: 3)
                    .frame(alignment: .center)
                    
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
