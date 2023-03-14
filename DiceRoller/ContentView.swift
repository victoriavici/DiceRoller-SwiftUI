//
//  ContentView.swift
//  DiceRoller
//
//  Created by Sebastian Mraz on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: DiceRollerDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(DiceRollerDocument()))
    }
}
