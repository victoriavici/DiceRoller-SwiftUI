//
//  DiceRollerApp.swift
//  DiceRoller
//
//  Created by Sebastian Mraz on 14/03/2023.
//

import SwiftUI

@main
struct DiceRollerApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: DiceRollerDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
